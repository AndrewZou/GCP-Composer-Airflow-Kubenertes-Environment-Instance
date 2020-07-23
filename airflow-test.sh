#!/bin/bash
echo 'Running the test tasks'

##Modifiy the command below to check the GCP composer environment
#gcloud composer environments describe [your-environment-name-created] --location [your-GCP-composer-location]

##Get information from above command to have the authorization of the cluster running environment - Kubenertes Engine
#gcloud container clusters get-credentials ${GKE_CLUSTER_NAME} --zone ${GCP_GKE_LOCATION}

##Using command below to find out the pods which running the Airflow instances
#gcloud get pods --all-namespaces | grep airflow-worker

##Running commend to make an entry of the pod shell running environment
#kubectl -n ${GCP-COMPOSER-NAMESPACE} exec -it ${one-airflow-instance-running-pod}} -c airflow-worker -- /bin/bash

airflow --dryrun test bigquery_github_trends bq_check_githubarchive_day 2018-12-01
airflow test bigquery_github_trends bq_check_hackernews_full 2018-12-01
echo 'Finished the test tasks run.'

