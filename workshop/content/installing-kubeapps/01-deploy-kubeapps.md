```terminal:execute
command: helm repo add bitnami https://charts.bitnami.com/bitnami
```

```terminal:execute
command: kubectl create ns kubeapps
```

```terminal:execute
command: helm install kubeapps -n kubeapps bitnami/kubeapps
```

{{ingress_protocol}}://{{session_namespace}}-kubeapps.{{ingress_domain}}/
