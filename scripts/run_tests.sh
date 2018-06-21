#!/bin/bash
# Export secret key
# export SECRET_KEY='foobarbaz'

#Create/Activate virtualenv

# virtualenv venv

# source venv/bin/activate

#Install Requirements

# pip install -r requirements.txt

#Run tests, $1, $2, $3 ... allow for command line argurments

python systers_portal/manage.py test --settings=systers_portal.settings.testing $1 $2 $3 $4 $5



