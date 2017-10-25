#!/bin/bash

nohup redis-server &

cd /app
python main.py
