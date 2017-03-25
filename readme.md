# bootstrap-ci-environment
This repo contains a dockerfile for a custom jenkins image.
Once build the image will be able to use the docker socket of the host machine to spawn new containers itself.

To be able to build up ssh connections a rsa key lcoated under jenkins_image/custom will be injected into the jenkins image.

# Security
The resulting jenkins instance uses a insecure HTTP connection, no https. Please do not use this for production purposes.
The intention behind this repo is to provide a fast way to set up a ci-environment for hackathons or similar events.

# Requirements
Just install docker on your host machine and check out this repo.

# Setup
Replace the rsa key in /jenkins_image/custom with the one jenkins should use. 
You can also place a known_hosts file there.

Execute the bootstrap.sh
