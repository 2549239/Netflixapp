#!/bin/bash
cd /var/lib/jenkins/workspace/myflix-jenkins
python3 -m venv myenv
source myenv/bin/activate
pip install -r requirements.txt
python3 manage.py
python3 manage.py collectstatic --noinput

