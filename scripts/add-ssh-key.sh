#!/bin/bash
# Adds my laptop's public SSH key to the server's authorized_keys
# (reads the key from my laptop, so no key is stored in this repo)
multipass exec portfolio-server -- bash -c "echo '$(cat ~/.ssh/id_ed25519.pub)' >> ~/.ssh/authorized_keys"