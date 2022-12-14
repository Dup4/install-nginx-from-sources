#! /bin/bash

function get_now_time() {
    # https://unix.stackexchange.com/questions/120484/what-is-a-standard-command-for-printing-a-date-in-rfc-3339-format
    NOW_TIME=$(date --rfc-3339=ns | sed 's/ /T/; s/\(\....\).*\([+-]\)/\1\2/g')
    echo "${NOW_TIME}"
}

function INFO() {
    echo -e "\033[0;32m$(get_now_time) [INFO]: $*\033[0m"
}

function ERROR() {
    echo -e "\033[0;31m$(get_now_time) [ERROR]: $*\033[0m"
}
