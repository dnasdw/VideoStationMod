#!/bin/sh

pushd "`dirname "$0"`"
chown -R VideoStation:VideoStation ./plugins/syno_themoviedb
chmod 0644 ./plugins/syno_themoviedb/*
chmod 0755 ./plugins/syno_themoviedb/loader.sh
chmod +x ./plugins/syno_themoviedb/loader.sh
cp -rf ./plugins/syno_themoviedb/* /volume1/\@appstore/VideoStation/plugins/syno_themoviedb/
popd
