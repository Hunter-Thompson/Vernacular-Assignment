[ ! -d "/var/log/audio-deletion/" ] && mkdir -p /var/log/audio-deletion

multiple_cmd() { 
  echo $1 $(date -Is -d @`stat -c %Y $1`) $(date -Is) >> /var/log/audio-deletion/deleted-files-$(date +"%d-%m-%y").log;
}; 


find /home/ubuntu/audio/ -mtime +2 -exec bash -c 'multiple_cmd "$0"' {} \; -exec rm {} \;

