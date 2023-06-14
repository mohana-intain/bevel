apiVersion: v1
kind: ServiceAccount
metadata:
  name: vault-auth
  namespace: {{ component_name }}
secrets:
- name: vault-auth  
---
apiVersion: v1
kind: Secret
metadata:
  name: vault-auth
  namespace: {{ component_name }}
  annotations:
    kubernetes.io/service-account.name: vault-auth
type: kubernetes.io/service-account-token
