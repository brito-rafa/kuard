kubectl apply --validate=false -f https://raw.githubusercontent.com/brito-rafa/kuard/deployment-kuard/deployments/kuard.yaml
while  [ "$(kubectl get pods -n kuard-example | grep -i running | grep '1/1' |  wc -l | awk '{print $1}')" != "1" ]; do echo "INFO: Waiting kuard..." && kubectl get pods -n kuard-example && sleep 10 ; done
# creating the testing CRs
oc expose service kuard-service -n kuard-example
# showing route
oc get route -n kuard-example
