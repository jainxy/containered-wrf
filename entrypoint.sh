#!/bin/bash
set -e

sed -i "s/geog_data_path = .*/geog_data_path = '\/home\/wrf\/data\/'/" /home/wrf/WPS/namelist.wps

for f in /home/wrf/scripts/*; do
    case "$f" in
        *.sh)     echo "$0: running $f"; . "$f" ;;
        *)        echo "$0: ignoring $f" ;;
    esac
    echo
done

exec "$@"
