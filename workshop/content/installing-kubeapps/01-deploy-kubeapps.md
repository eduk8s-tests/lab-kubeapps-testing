```terminal:execute
command: kubectl create namespace dex
```

```terminal:execute
command: helm repo add stable https://charts.helm.sh/stable
```

```terminal:execute
command: helm install dex stable/dex --namespace dex --values dex-values.yaml
```

```terminal:execute
command: kubectl rollout status deployment/dex -n dex
```

{{ingress_protocol}}://{{session_namespace}}-dex.{{ingress_domain}}/.well-known/openid-configuration

```terminal:execute
command: helm repo add bitnami https://charts.bitnami.com/bitnami
```

```terminal:execute
command: kubectl create ns kubeapps
```

```terminal:execute
command: helm install kubeapps bitnami/kubeapps --namespace kubeapps --values kubeapps-auth-proxy-values.yaml
```

```terminal:execute
command: kubectl rollout status deployment/kubeapps -n kubeapps
```

{{ingress_protocol}}://{{session_namespace}}-kubeapps.{{ingress_domain}}/
