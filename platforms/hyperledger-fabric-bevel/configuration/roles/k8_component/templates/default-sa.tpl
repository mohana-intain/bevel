apiVersion: v1
kind: ServiceAccount
metadata:
  name: default
  namespace: {{ component_name }}
secrets:
- name: default
---
---
apiVersion: v1
kind: Secret
metadata:
  name: default
  namespace: {{ component_name }}
  annotations:
    kubernetes.io/service-account.name: default
type: kubernetes.io/service-account-token
