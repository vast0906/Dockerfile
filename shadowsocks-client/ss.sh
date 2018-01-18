#!/bin/bash
if [ -f $3 ];then
  ${1} -c $3
else
  ${*}
fi
