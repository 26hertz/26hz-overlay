# 26hz-overlay
---
## Configuration in Gentoo GNU/Linux for myself. Be carefully!!!
### manually write Gentoo repos config file
```bash
cat > /etc/portage/repos.conf/26hz-overlay.conf <<EOF
[26hz-overlay]
location    = /var/db/repos/26hz-overlay
sync-type   = git
sync-uri    = https://github.com/26hertz/26hz-overlay.git
sync-depth  = 1
auto-sync   = yes
priority    = -100
EOF
```
### Sync repos use emerge
`emerge --sync`
### *(Optional)Sync repos use eix*
`eix-sync -a`
