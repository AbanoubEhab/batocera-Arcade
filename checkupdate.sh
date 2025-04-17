#! /bin/bash

lastcommit=$(/usr/bin/curl https://raw.githubusercontent.com/AbanoubEhab/batocera-Arcade/refs/heads/time-stamp/last_commit.txt)

lastupdate=$(/bin/cat /userdata/system/gl-update/last_commit.txt)

if [[ $lastcommit == $lastupdate ]]; then

  echo "No new Updates"

else

  echo "new update found"
  # execute update script
  curl -fsSL https://github.com/AbanoubEhab/batocera-Arcade/raw/refs/heads/main/update.sh | sh

  echo $lastcommit > /userdata/system/gl-update/last_commit.txt

fi