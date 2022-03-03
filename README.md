# github-repo-management

## Managing secrets

Sensitive configuration can be {en,de}crypted using a Vault instance.

Decryption:

```bash
vault write transit/decrypt/tf-encryption-key -format=json ciphertext=$(cat backend-config.enc) | jq -r .data.plaintext | base64 -d > backend-config
```

Encryption:

```bash
vault write transit/encrypt/tf-encryption-key -format=json plaintext=$(cat backend-config | base64 -w 0) | jq -r .data.ciphertext > backend-config.enc
```

## Importing existing repos

```
terraform import module.github_repository.github_repository.repo repo-name
```
