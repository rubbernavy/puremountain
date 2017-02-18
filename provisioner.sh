#!/bin/sh

DOCKER_IMAGE=${1} &&
  dnf update --assumeyes &&
  cp /vagrant/docker.repo /etc/yum.repos.d &&
  dnf update --assumeyes &&
  dnf install --assumeyes docker-engine &&
  systemctl enable docker.service &&
  systemctl start docker &&
  docker run --interactive --rm --volume /var/run/docker.sock:/var/run/docker.sock:ro ${DOCKER_IMAGE} &&
  dnf update --assumeyes &&
  true
