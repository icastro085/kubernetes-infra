istio-install:
	curl -L https://istio.io/downloadIstio | sh -
# chmod 755 <path_to_installer>/<install_file>
# sudo cp <path_to_installer>/<install_file> /usr/local/bin/istioctl
# istioctl --help

istio-create-namespace:
	kubectl create namespace istio-ingress

istio-mesh-install:
	istioctl install -f istio-operator.yml

# -----------------------------------------------------------------------------
ISTIO_NAMESPACE := default

# https://istio.io/latest/docs/setup/additional-setup/sidecar-injection/#automatic-sidecar-injection
.PHONY: istio-injection-enabled
istio-injection-enabled:
	kubectl label namespace ${ISTIO_NAMESPACE} istio-injection=enabled --overwrite
	kubectl get namespace -L istio-injection

istio-injection-disable:
	kubectl label namespace ${ISTIO_NAMESPACE} istio-injection-
# -----------------------------------------------------------------------------

.PHONY: minikube-export-env
minikube-export-env:
	@echo "copy code from minikube-export-env.sh and paste on terminal"

