# Learning log

## 23 Nov 2026: my first Linux server

- Created a Linux VM with Multipass. A VM is basically a computer running inside another computer, usually controlled remotely e.g. with SSH
- My server's IP is 10.97.0.64. That's a private IP, so only my laptop can reach it. To make it public later I'll need something like Cloudflare Tunnel.
- The default user on the server is `ubuntu`.
- Still not sure: how exactly does the hypervisor share my laptop's hardware with the VM?

## 24 Nov 2026: Connected to my Linux server with SSH

- **SSH** (Secure Shell) lets me control a server from my laptop's terminal. Commands I type run on the server.
- **Key pair:** I made one with `ssh-keygen`. The **public key** (`.pub`) is like a padlock and is safe to share. The **private key** is the only key that opens it and never leaves my laptop.
- **`authorized_keys`** is the server's list of allowed public keys (`~/.ssh/authorized_keys`). When I log in, the server checks if my private key matches one of them. Multipass had already added its own key there.
- **`>` vs `>>`:** `>` replaces a whole file, `>>` adds to the end. I used `>>` to add my key. Using `>` would have deleted Multipass's key and broken `multipass shell`.
- **Fingerprint:** the first time I connected, SSH showed the server's fingerprint (its ID) and asked if I trust it. It saves it in `known_hosts`. If it ever changes, SSH warns me, which protects against man-in-the-middle attacks.
- **Port 22** is the default port SSH uses.
- **Debugging:** my first attempt said "Connection closed". I ran `ssh -v` (verbose) to see every step. On the next try it worked, and the output showed `authorized_keys:2`, meaning line 2 (my key) let me in.
- **Hidden files:** files starting with `.` are hidden. `ls -a` shows them.
- **Still unsure:** why the first connection failed. If it happens again, I'll check `ssh -v` straight away.