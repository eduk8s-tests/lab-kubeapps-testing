```terminal:execute
command: kubectl create namespace dex
```

```terminal:execute
command: helm repo add stable https://charts.helm.sh/stable
```

```terminal:execute
command: helm install dex stable/dex --namespace dex  --values dex-values.yaml
```

```terminal:execute
command: helm repo add bitnami https://charts.bitnami.com/bitnami
```

```terminal:execute
command: kubectl create ns kubeapps
```

```terminal:execute
command: helm install kubeapps -n kubeapps bitnami/kubeapps
```

```terminal:execute
command: kubectl rollout status deployment/kubeapps -n kubeapps
```

{{ingress_protocol}}://{{session_namespace}}-kubeapps.{{ingress_domain}}/
