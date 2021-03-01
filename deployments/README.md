# Kuard Deployments

On this directory, multiple ways to deploy kuard application using deployment.apps K8s construct.
You might want to expose the kuard service using your ingress controller of choice.

## Simplest

Create one deployment under `kuard-example` namespace with one pod replica, with ClusterIP service.

```bash
kubectl apply -f kuard.yaml 
# check pod
kubectl get pods -n kuard-example
```

## Exposing the Service: OpenShift

Example if using OpenShift:

```
# if openshift
oc expose service kuard-service -n kuard-example

# check route
kubectl get routes -n kuard-original

```

## To do

Create multiple combinations of deployment with different versions of kuard. Load balance traffic among replicas.

