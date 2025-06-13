#!/bin/bash
DATA_DIR=$1
DATE=$2

if [ ! -d "$DATA_DIR" ]; then
    echo "Error: Data dir '$DATA_DIR' does not exist."
    echo "Usage: $0 DATA_DIR [DATE]"
    exit 1
fi

# Mac OSX, WSL
#docker run --rm -v $(pwd)/$DATA_DIR:/data taxi-rides-outlier-detection /data $DATE

# Git Bash
docker run --rm -v $(pwd -W)/$DATA_DIR:/app/data taxi-rides-outlier-detection data $DATE