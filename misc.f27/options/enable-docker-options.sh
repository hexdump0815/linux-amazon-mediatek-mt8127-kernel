#!/bin/bash

cd /compile/source/linux-amazon-mt

for i in `cat /compile/doc/amazon-mt/misc.f27/options/docker-options-mod.txt | grep -v ^#`; do
  echo $i
  ./scripts/config -m $i
done

for i in `cat /compile/doc/amazon-mt/misc.f27/options/docker-options-yes.txt | grep -v ^#`; do
  echo $i
  ./scripts/config -e $i
done
