path "{{ vault_secret_path }}/data/crypto/ordererOrganizations/{{ component_name }}/*" {
    capabilities = ["read", "list", "create", "update"]
}
path "{{ vault_secret_path }}/*" {
    capabilities = ["list"]
}
path "{{ vault_secret_path }}/data/crypto/peerOrganizations/*" {
    capabilities = ["deny"]
}
path "{{ vault_secret_path }}/data/credentials/{{ component_name }}/*" {
    capabilities = ["read", "list", "create", "update"]
}