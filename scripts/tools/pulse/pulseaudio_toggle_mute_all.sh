#!/bin/sh
# Mutes/unmutes the default audio output (PipeWire compatible)

# 1. Toggle the mute state
pamixer --toggle-mute

# 2. Tell dusk to repaint the status bar immediately
duskc --ignore-reply run_command setstatus 1 "$(~/.local/bin/slstatusbar/volume)"
