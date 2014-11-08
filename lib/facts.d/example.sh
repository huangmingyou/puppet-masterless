#!/bin/bash
dpkg -l|grep puppet|awk '{print $2"="$3}'
