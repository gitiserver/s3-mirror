#!/bin/sh

mc alias set myremote $S3_ADDR $S3_ACCESS $S3_SECRET

mc mirror --overwrite --watch /var/data/ myremote/$S3_BUCKET/