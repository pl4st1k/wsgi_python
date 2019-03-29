#!/bin/bash
pip install -r /opt/app/requirements.txt
httpd -DFOREGROUND
