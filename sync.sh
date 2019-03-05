#!/bin/ash

set -e

echo "$(date) - Start"

aws s3 sync /data s3://$BUCKET$BUCKET_PATH $PARAMS
aws s3 sync s3://$BUCKET$BUCKET_PATH /data $PARAMS

echo "$(date) End"
