# 快速開始

## 建議硬體配置

-   Memory: 16 GB 以上
-   Processor: 13th Gen Intel® Core™ i7-13700 x 24 以上
-   Disk Capacity: 1.0 TB 以上
-   OS Name: Ubuntu 22.04.3 LTS or Windows 11
-   OS Type: 64-bit

## 環境需求

-   Node.js: 14.16.1 (LTS)  
     (請使用 nvm 安裝 Node.js: https://github.com/nvm-sh/nvm)
-   PM2: Latest version
-   FFMpeg: Latest version  
    (FFMpeg 安裝可參考: https://ubuntuhandbook.org/index.php/2021/05/install-ffmpeg-4-4-ppa-ubuntu-20-04-21-04/)
-   ZLMediaKit: Latest version  
    (進入 $home/NVR/ZLMediaKit，並按照以下教程開始安裝編譯器、依賴庫、構建和編譯項目: https://github.com/ZLMediaKit/ZLMediaKit/wiki/%E5%BF%AB%E9%80%9F%E5%BC%80%E5%A7%8B)
-   Nginx: Latest version ( For HTTPS )  
    (Nginx 安裝可參考: https://www.digitalocean.com/community/tutorials/how-to-install-nginx-on-ubuntu-22-04)
-   Certbot: Latest version ( For HTTPS )  
    (Certbot 安裝及申請憑證可參考: https://certbot.eff.org/instructions?ws=nginx&os=ubuntufocal 。完成後，請於 /etc/nginx/sites-enabled/default 中，找到 listen 443 ssl 的 server，並在裡面加入:  
    &emsp;location / {  
    &emsp;&emsp;proxy_pass https://localhost:9443;  
    &emsp;&emsp;proxy_set_header X-Real-IP $remote_addr;  
    &emsp;&emsp;proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;  
    &emsp;&emsp;proxy_set_header X-Forwarded-Proto $http_x_forwarded_proto;  
    &emsp;}  
    最後使用終端機輸入"sudo /etc/init.d/nginx restart" 以重啟 Nginx，並使新配置生效。)

## 啟動程式

-   pm2 start ecosystem.config.js
-   pm2 save (記得先使用 pm2 startup 設定開機自動啟動 pm2)

## 功能介紹

1. 自訂的客戶列表: 可按照需求加入客戶的攝影機串流資訊，支援 RTSP( H264 及 HEVC )協議，並設有多項可調設定，包括檔案保留天數(retentionDays)、播放倍速(playbackSpeedTime)及截圖頻率(screenshotFrequencyInSeconds)等。  
   (https://example.com/config 或 http://localhost:9080/config)
2. 自動備分影像串流截圖及合成縮時影像: 按日期、客戶作分類，可依需求線上瀏覽或直接下載影像檔。  
   (https://example.com/backup/video/your_client_name 或 http://localhost:9080/backup/video/your_client_name)

## 備註

如需切換成 HTTPS 協議，可直接於下列路徑的檔案中，將代碼"IS_HTTPS"設置為"true"，最後使用終端機輸入指令 "pm2 reload time-lapse" 以重整系統:

-   $HOME/NVR/index.js
-   $HOME/NVR/mediaserver.js
-   $HOME/NVR/ZLMediaKit/release/linux/Debug/www/config/index.html
