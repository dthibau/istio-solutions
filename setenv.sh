export ISTIO_HOME=/home/dthibau/Formations/Istio/MyWork/istio-1.23.2
export PATH=$ISTIO_HOME/bin:$PATH

export INGRESS_HOST=$(kubectl get po -l istio=ingressgateway -n istio-system -o jsonpath='{.items[0].status.hostIP}')
export INGRESS_PORT=$(kubectl -n istio-system get service istio-ingressgateway -o jsonpath='{.spec.ports[?(@.name=="http2")].nodePort}')
export SECURE_INGRESS_PORT=$(kubectl -n istio-system get service istio-ingressgateway -o jsonpath='{.spec.ports[?(@.name=="https")].nodePort}')

export TP_DATA=/home/dthibau/Formations/Istio/github/solutions
export CERT_DIR=$TP_DATA/2.1_Gateway/cert


kubectl create namespace formation
kubectl config set-context $(kubectl config current-context) --namespace=formation

kubectl label namespace formation istio-injection=enabled
