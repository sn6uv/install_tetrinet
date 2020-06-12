#!/usr/bin/env bash
#

sudo dpkg --add-architecture i386 && \
  sudo apt update && \
  sudo apt install --assume-yes wine32 && \
  curl http://tetrinet.us/tnet113.exe > tnet113.exe && \
  wine tnet113.exe && \
  echo "alias tetrinet='wine ~/.wine/drive_c/TetriNET/TETRINET.exe'" >> ~/.bashrc && \
  source ~/.bashrc && \
  tetrinet
clear
echo
echo "In the future just type 'tetrinet' to run TetriNET."
