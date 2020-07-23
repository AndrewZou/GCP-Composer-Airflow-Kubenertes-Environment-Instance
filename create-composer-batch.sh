#!/bin/bash
gcloud config set compute/zone us-central1-f

gcloud beta composer environments create airflow-pipe-environment \
    --location us-central1 \
    --zone us-central1-f \
    --machine-type n1-standard-2 \
    --labels env=beta \
    --disk-size 20 \
    --python-version 3

#bq --location=us mk \
#--dataset \
#--default_table_expiration 10800 \
#--default_partition_expiration 10800 \
#--description 'A dataset for project' \
#airflow-pipe:github_trends
