#!/bin/bash
sudo cat >> /etc/hosts << 'EOF'
10.0.0.2 prx1
10.0.0.3 app1
10.0.0.4 sql1
10.0.0.5 red1
EOF
