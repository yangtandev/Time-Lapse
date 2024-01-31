## 建議硬體配置

-   Memory: 16 GB 以上
-   Processor: 13th Gen Intel® Core™ i7-13700 x 24 以上
-   Disk Capacity: 1.0 TB 以上
-   OS Name: Ubuntu 22.04.3 LTS or Windows 11
-   OS Type: 64-bit

## 獲取代碼

```
git clone https://github.com/yangtandev/Time-Lapse.git
```

## 環境需求

-   Git: Latest version
-   Node.js: 14.16.1 (LTS) or later  
    請使用 nvm 安裝 Node.js: https://github.com/nvm-sh/nvm
-   PM2: Latest version
-   NVIDIA Display Driver: 535.86.10 or later  
    NVIDIA Driver 安裝可參考: https://www.nvidia.com/Download/index.aspx
-   CUDA Toolkit: 12.2 or later  
    CUDA 安裝可參考: https://developer.nvidia.com/cuda-downloads
-   NVIDIA-Patch: Latest version  
    此為破解顯卡影像編碼最大限制的補丁，安裝可參考: https://github.com/keylase/nvidia-patch
-   FFMpeg: Latest version  
    安裝可參考:  
    https://docs.nvidia.com/video-technologies/video-codec-sdk/12.0/ffmpeg-with-nvidia-gpu/index.html
    https://trac.ffmpeg.org/wiki/CompilationGuide/Ubuntu  
    https://jackfrisht.medium.com/install-nvidia-driver-via-ppa-in-ubuntu-18-04-fc9a8c4658b9
    ```
    // Enter Time-Lapse directory
    cd ~/Time-Lapse
    
    // Clone ffnvcodec
    git clone https://git.videolan.org/git/ffmpeg/nv-codec-headers.git
    
    // Install ffnvcodec
    cd nv-codec-headers && sudo make install && cd ..
    
    // Configure environment
    sudo nano ~/.bashrc
    
    // Add the following content at the end
    export PATH=/usr/local/cuda/bin${PATH:+:${PATH}}
    export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/cuda/lib64
    
    // Reload configuration
    source ~/.bashrc
    sudo ldconfig
    
    // Check whether CUDA is installed successfully
    nvcc -V
    
    // Clone FFmpeg's public GIT repository.
    git clone https://git.ffmpeg.org/ffmpeg.git ffmpeg/
    
    // Enter ffmepg directory
    cd ./ffmpeg
    
    // Get the Dependencies
    sudo apt-get update -qq && sudo apt-get -y install autoconf automake build-essential cmake git-core libass-dev libfreetype6-dev libgnutls28-dev libmp3lame-dev libsdl2-dev libtool libva-dev libvdpau-dev libvorbis-dev libxcb1-dev libxcb-shm0-dev libxcb-xfixes0-dev libc6 libc6-dev libnuma1 libnuma-dev meson ninja-build pkg-config texinfo unzip wget yasm zlib1g-dev
    
    // Configure
    ./configure --enable-nonfree --enable-cuda-nvcc --enable-libnpp --extra-cflags=-I/usr/local/cuda/include --extra-ldflags=-L/usr/local/cuda/lib64 --disable-static --enable-shared --enable-gpl --enable-libx264 --enable-libx265
    
    // Compile
    make -j 8
    
    // Install the libraries.
    sudo make install && cd ..
    ```
-   ZLMediaKit: Latest version  
    按照以下教程開始安裝編譯器、依賴庫、構建和編譯項目: https://github.com/ZLMediaKit/ZLMediaKit/wiki/%E5%BF%AB%E9%80%9F%E5%BC%80%E5%A7%8B
    ```
    // Enter ZLMediaKit directory
    cd ~/Time-Lapse/ZLMediaKit
    
    // Install the compiler
    sudo apt-get install build-essential
    
    // Install dependent libraries
    sudo apt-get install libssl-dev
    sudo apt-get install libsdl-dev
    sudo apt-get install libavcodec-dev
    sudo apt-get install libavutil-dev
    
    // Build and compile the project
    mkdir build
    cd build
    cmake ..
    make -j4
    ```
-   Nginx: Latest version ( For HTTPS )  
    安裝可參考: https://www.digitalocean.com/community/tutorials/how-to-install-nginx-on-ubuntu-22-04
-   Certbot: Latest version ( For HTTPS )  
    安裝及申請憑證可參考: https://certbot.eff.org/instructions?ws=nginx&os=ubuntufocal  
    完成後，請於 /etc/nginx/sites-enabled/default 中，找到 listen 443 ssl 的 server，並在裡面加入:

    ```
    location / {
        proxy_pass https://localhost:9443;
        proxy_set_header X-Real-IP $remote_addr;
        proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
        proxy_set_header X-Forwarded-Proto $http_x_forwarded_proto;
    }
    ```

    最後，使用終端機輸入以下指令，以使新配置生效:

    ```
    sudo /etc/init.d/nginx restart
    ```

## 快速開始

```
cd $HOME/Time-Lapse
npm i
pm2 start ecosystem.config.js
pm2 save (記得先使用 pm2 startup 設定開機自動啟動 pm2)
```

## 功能介紹

1. 自訂的客戶列表: 可按照需求加入客戶的攝影機串流資訊，支援 RTSP( H264 及 HEVC )協議，並設有多項可調設定，包括檔案保留天數(retentionDays)、每秒顯示幀數(framesPerSecond)及截圖頻率(screenshotFrequencyInSeconds)等。  
   https://example.com/config  
   http://localhost:9080/config
2. 自動備分影像串流截圖及合成縮時影像: 按日期、客戶作分類，可依需求線上瀏覽或直接下載影像檔。  
   https://example.com/backup/video/your_client_name  
   http://localhost:9080/backup/video/your_client_name

## 備註

如需切換成 HTTPS 協議，可直接於下列路徑的檔案中，將代碼"IS_HTTPS"設置為"true":

-   $HOME/Time-Lapse/index.js
-   $HOME/Time-Lapse/mediaserver.js
-   $HOME/Time-Lapse/ZLMediaKit/release/linux/Debug/www/config/index.html

最後，使用終端機輸入以下指令，以使新配置生效:

```
pm2 reload time-lapse
```
