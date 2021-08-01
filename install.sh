echo "setup starts"
gcloud container clusters get-credentials business-transaction-monitoring --zone europe-west1-c --project hariprasad-sundaresan-308010
helm repo add elastic https://helm.elastic.co
helm repo update
helm business-transaction-monitoring ./btm-charts
echo "setup ends"
