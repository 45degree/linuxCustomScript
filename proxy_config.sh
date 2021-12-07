#!/bin/bash

function disable_proxy() {
    unset http_proxy
    unset https_proxy
    unset no_proxy
}

function enable_proxy() {
    disable_proxy
    export http_proxy=http://127.0.0.1:12333
    export https_proxy=http://127.0.0.1:12333
    export no_proxy=localhost
}
