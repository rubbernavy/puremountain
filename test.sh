#!/bin/sh

vagrant destroy -f &&
  export DOCKER_IMAGE=rubbernavy/icyflea:0.0.0 &&
  time vagrant up &&
  vagrant ssh &&
  true
