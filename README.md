# installation

<!-- path of this data is /data/compose/${index}/nginx-proxy-manager -->
volumes:
    - ./nginx-proxy-manager:/data

<!-- path of this data is /var/lib/docker/volumes/portainer_data -->
volumes:
    - portainer_data:/data portainer/portainer-ee:latest
