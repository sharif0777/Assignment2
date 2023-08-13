

KUBECONFIG := ~/.kube/config
NAMESPACE := "default"

#Commands
up:
	@echo "Creating Kubernetes cluster"
	cd terraform && terraform apply -auto-approve -lock=false
	#kind create cluster --config kind-config.yaml --name new

deploy:
	@echo "Deploying manifests"
	#docker build -t app1:latest .
        #docker tag app1 kindest/app1:latest
        #kind load docker-image app1:latest
        #helm3 install app1 ./Scenario-2/app1/ -n $(NAMESPACE)
        #helm3 install nginx1 ./Scenario-2/nginx1/ -n $(NAMESPACE)
	kubectl apply -f ./Scenario-3/policy.yaml -n $(NAMESPACE)

down:
	@echo "Destroying Local Kubernetes cluster"
	cd terraform && terraform destroy -auto-approve -lock=false
	#kind delete cluster --name new

