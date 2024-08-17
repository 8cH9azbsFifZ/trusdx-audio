#!/bin/bash

modprobe snd-aloop
pactl load-module module-null-sink sink_name=TRUSDX sink_properties=device.description="TRUSDX"
python3 trusdx-txrx.py -v