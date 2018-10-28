#!/bin/bash

groupadd -r rust 
useradd --no-log-init -m -u 111 -g rust rust 
chgrp -R rust /home/rust
echo '%rust ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

mkdir /workspace
chgrp -R rust /workspace
