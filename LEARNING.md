# Learning log

## 23 Nov 2026: my first Linux server

- Created a Linux VM with Multipass. A VM is basically a computer running inside another computer, usually controlled remotely e.g. with SSH
- My server's IP is 10.97.0.64. That's a private IP, so only my laptop can reach it. To make it public later I'll need something like Cloudflare Tunnel.
- The default user on the server is `ubuntu`.
- Still not sure: how exactly does the hypervisor share my laptop's hardware with the VM?