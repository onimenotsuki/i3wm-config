#!/bin/bash

# Append layout to workspace
i3-msg "workspace org ; append_layout ~/.i3/layouts/mongodev.json"

# Add applications to containers
(emacs &)
(urxvt &)
(~/.robomongo/bin/robomongo &)
