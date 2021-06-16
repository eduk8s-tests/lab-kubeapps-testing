```terminal:execute
command: create namespace dex
```

```terminal:execute
command: helm repo add stable https://charts.helm.sh/stable
```

```terminal:execute
command: |-
  cat > dex-values.yaml << EOF
  config:
    issuer: {{ingress_protocol}}://{{session_namespace}}-dex.{{ingress_domain}}
    storage:
      type: memory
    enablePasswordDB: true
    staticPasswords:
      - email: "kubeapps-operator@example.com"
        hash: "$2a$10$2b2cU8CPhOTaGrs1HRQuAueS7JTT5ZHsHSzYiFPm1leZck7Mc8T4W"
        username: "admin"
        userID: "08a8684b-db88-4b73-90a9-3cd1661f5466"
      - email: "kubeapps-user@example.com"
        hash: "$2a$10$2b2cU8CPhOTaGrs1HRQuAueS7JTT5ZHsHSzYiFPm1leZck7Mc8T4W"
        username: "kubeapps-user"
        userID: "08a8684b-db88-4b73-90a9-3cd1661f5467"
  EOF
```

```terminal:execute
helm install dex stable/dex --namespace dex  --values dex-values.yaml
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
