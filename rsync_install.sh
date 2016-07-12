
inotifywait -mrq --timefmt '%Y/%m/%d-%H:%M:%S' --format '%T %w %f' \
  -e modify,delete,create,move,attrib /root/xienan/14/ \
  | while read file
 do
   rsync -auvrtzopgP --delete --progress
   --password-file=/root/xienan/rsync_client.pwd /root/xienan/14/
   rsync://yjtest@114.55.52.254/test
 done

 rsync -auvrtzopgP --progress --password-file=/root/xienan/rsync_client.pwd /root/xienan/14/ rsync://yjtest@114.55.52.254/test

 rsync -auvrtzopgP --progress --password-file=/root/xienan/rsync_client.pwd yjtest@114.55.52.254::test /root/xienan/254/

