tmp_file="/tmp/np_lastfm.txt"
if [ -f "$tmp_file" ]; then
  last_update=$(stat -c "%Y" ${tmp_file})
  time_now=$(date +%s)

  up_to_date=$(echo "(${time_now}-${last_update}) < 10" | bc)
  if [ "$up_to_date" -eq 1 ]; then
    np=$(cat ${tmp_file})
  fi
fi

if [ -z "$np" ]; then
  np=$(curl --max-time 2 -s \
  http://ws.audioscrobbler.com/1.0/user/aliouftw/recenttracks.txt \
  | head -n 1 | sed -e 's/^[0-9]*,//' | sed 's/\xe2\x80\x93/-/')
  if [ "$?" -eq "0" ] && [ -n "$np" ]; then
    echo "${np}" > $tmp_file
  fi
fi
echo "$np ❮ "
