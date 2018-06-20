#!/bin/bash
# Export secret key
export SECRET_KEY='foobarbaz'

# Create/Activate virtualenv

virtualenv venv

source venv/bin/activate

# Install Requirements

pip install -r requirements.txt

# Make Migrations
python manage.py makemigrations

# Migrate

python manage.py migrate

# Run tests, $1, $2, $3 ... allow for command line argurments

py.test $1 $2 $3 $4 $5



