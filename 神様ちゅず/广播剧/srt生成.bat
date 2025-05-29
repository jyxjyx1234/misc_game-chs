echo python gen_srt.py gt_output\sv_tr08.mp3_fortrans.json srt\sv_tr08.srt 0



ffmpeg -hwaccel cuda -i kamichu_shortvoicedrama.wav -vf "subtitles=1.srt,format=nv12,hwupload" -c:v hevc_nvenc -b_ref_mode disabled -qp 24 -y kamichu_shortvoicedrama.mp4

ffmpeg -hwaccel cuda -loop 1 -i EV002A01.png -i kamichu_shortvoicedrama.wav -vf "subtitles=1.srt,format=nv12,hwupload" -c:v hevc_nvenc -b_ref_mode disabled -c:a aac -b:a 294k -shortest -qp 28 -y kamichu_shortvoicedrama.mp4