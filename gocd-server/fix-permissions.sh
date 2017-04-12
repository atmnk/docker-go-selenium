#!/bin/sh -x

fix_permissions_which_cant_be_set_during_docker_image_building() {
  chown -R go:go /etc/go /var/go /usr/share/go-server /etc/default/go-server
  chmod -R 777 /tmp
}

fix_permissions_which_cant_be_set_during_docker_image_building
