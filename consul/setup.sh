helm repo add nfs-subdir-external-provisioner https://kubernetes-sigs.github.io/nfs-subdir-external-provisioner/
helm repo update
helm install nfs-subdir-external-provisioner nfs-subdir-external-provisioner/nfs-subdir-external-provisioner --set nfs.server=192.168.11.11 --set nfs.path=/srv/nfs -n kube-system
kubectl patch storageclass nfs-client -p '{"metadata":{"annotations": {"storageclass.kubernetes.io/is-default-class": "true"}}}'
helm install consul hashicorp/consul -f config.yaml -n consul
