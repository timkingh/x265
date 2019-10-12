goto start

draw_mvs -i=F:\rkvenc_verify\input_yuv\yuv\Kimono1_1920x1080_24.yuv ^
         -o=Kimono1_1920x1080_24_qp45_60frames_rime16_50_50.yuv ^
         -c=mei_kimonol_qp45_3frames_100_0.txt ^
         -w=1920 -h=1080 --frames=60 --cu_size=16                 
                        
:start       
            
       
x265 --input-res 1920x1080 --fps 30 --frames 3 ^
     --input F:\rkvenc_verify\input_yuv\yuv\Tennis_1920x1080_24.yuv ^
     --output tennis_org_1thread_0bframes_qp45_hme_full_rd4_temp.h265 ^
     --frame-threads 1 ^
     --bframes 0 --b-adapt 0 ^
     --qp 45 ^
     --hme ^
     --hme-search full ^
     --rd 3 ^
     --ref 1 ^
     --csv log.txt ^
     --csv-log-level 2
              
         
         
               