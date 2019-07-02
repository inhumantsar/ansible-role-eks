#!/bin/bash

# Requires valid credentials in the .aws directory

docker run \
    -v $HOME/.aws:/root/.aws \
    -e AWS_PROFILE=$AWS_PROFILE \
    -v $(pwd):/workspace -w /workspace \
    inhumantsar/ansible \
    /start.sh test.yml
