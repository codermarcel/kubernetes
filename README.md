These are some kubernetes experiments from 2017

Set up the secrets.

//Dev env.
dev/setup.sh

//Production env.
prod/setup.sh

Now Change the secret values (in dev/secrets and prod/secrets) and base64 encode them.
(Also, encode the USERNAME:AUTHTOKEN in the registry file before encoding the entire json string)

*****************************************
Tips & Tricks --------------------------
*****************************************

// Run shell inside container
kubectl exec -it podname -- /bin/bash


//Get all logs from a pod
kubectl get pods
kubectl logs pod_name -f


//Show all pods and infos about them. (IP, etc)
kubectl get po --all-namespaces -o wide


//Get pods env variables
kubectl exec podname env


// Get pods for a specific namespace
kubectl get pods -n nodeapp


*****************************************
Permissions --------------------------
*****************************************

If mounting a local file into a container (like "/sbin/entrypoint.sh") make sure to set the correct permissions locally.
chmod a+x entrypoint.sh before mounting it (or you get a permission error).


*****************************************
hostPath and minikube --------------------------
*****************************************

Minikube mounts /home to /hosthome
So you can mount any file in your /home folder

https://github.com/kubernetes/minikube#mounted-host-folders
