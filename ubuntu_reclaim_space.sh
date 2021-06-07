#!/bin/bash
# reclaim sapce tool
apt-get autoremove
du -sh /var/cache/apt
apt-get autoclean
journalctl --vacuum-time=3d

# Removes old revisions of snaps
# CLOSE ALL SNAPS BEFORE RUNNING THIS
du -h /var/lib/snapd/snaps
set -eu
snap list --all | awk '/disabled/{print $1, $3}' |
    while read snapname revision; do
        snap remove "$snapname" --revision="$revision"
    done