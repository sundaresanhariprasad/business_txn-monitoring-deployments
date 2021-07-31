echo "setup starts"
gcloud container clusters get-credentials elk-btm --zone europe-west1-c --project hariprasad-sundaresan-308010
helm repo add elastic https://helm.elastic.co
helm repo update
helm install btm-chart ./btm-charts
echo "setup ends"
