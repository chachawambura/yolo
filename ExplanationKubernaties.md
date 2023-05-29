# Orchestration
This refers to the automated configuration, co-ordination and management of computer systems and services.

## Deployed link
```
http://35.238.41.25:3000/
```

# Steps
1. We'll start deploying by first cloning our repo in the google cloud shell
```
git clone <repository url>
```
2. Change directory to the cloned repo

3. Create a new directory called "manifests"
```
mkdir manifests
```
4. Change directory to the created folder 'manifests'
5. Create the following files as follows
```
touch mongo-config.yml
touch mongo-secret.yml
touch mongo.yml
touch backend.yml
touch client.yml
```
6. Populate the respective yaml files with the necessary info
7. Log in to your google console and open your cloud shell
8. Run the following command to enable creation of clusters
```
gcloud services enable container.googleapis.com
```
9. Create a new cluster with the following command
```
gcloud container clusters create-auto yolowebapp-gke \
  --region us-central1

```
10. Change directory to the manifest destination and run the following commands
```
kubectl apply -f mongo-config.yml
kubectl apply -f mongo-secret.yml
kubectl apply -f mongo.yml
kubectl apply -f backend.yml
kubectl apply -f client.yml
```
11. Run the following command to check status of the deployments
```
kubectl get all

```
12. Use the following link to access our deployed application
```
http://35.238.41.25:3000/
```
