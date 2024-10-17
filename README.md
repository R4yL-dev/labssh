# LabSSH

This repo contains the playground for my SSH lab.

This repo contains the playground for my SSH lab.
My goal was to experiment with agent forwarding and the bastion concept.

## Usage

The playground is very simple.
It consists of a master containing the ssh client and administration tools, \
and a node running the SSH server.

```bash
docker compose build
docker compose up -d --scale node=3
docker exec -it labssh-master-1 bash
```
