  docker service create \
      --name registry \
      --secret ./repository/domain.crt \
      --secret ./repository/domain.key \
      --constraint 'node.labels.registry==true' \
      --mount type=bind,src=/scratch/registry,dst=/var/lib/registry \
      -e REGISTRY_HTTP_ADDR=0.0.0.0:443 \
      -e REGISTRY_HTTP_TLS_CERTIFICATE=/run/secrets/domain.crt \
      -e REGISTRY_HTTP_TLS_KEY=/run/secrets/domain.key \
      --publish published=443,target=443 \
      --replicas 1 \
      registry:2
