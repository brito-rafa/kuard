# Kuard Deployments

On this directory, multiple ways to deployment kuard application.

## Simplest deployment

Create one deployment under `kuard-example` namespace with one pod replica, with ClusterIP service.

```bash
kubectl apply -f kuard.yaml 
# check pod
kubectl get pods -n kuard-example
```

Expose the service using your ingress controller of choice. Example if using OpenShift:

```
# if openshift
oc expose service kuard-service -n kuard-example

# check route
kubectl get routes -n kuard-original

```

## To do

Create multiple combinations of deployment with different versions of kuard. Load balance traffic among replicas.

