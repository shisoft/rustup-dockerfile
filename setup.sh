#!/bin/bash

groupadd -r rust 
useradd --no-log-init -m -g rust rust 
chgrp -R rust /home/rust
