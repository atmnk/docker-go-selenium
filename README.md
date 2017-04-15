# Docker+GOCD+Selenium

[![Build Status](https://travis-ci.org/pr4bh4sh/docker-go-selenium.svg?branch=master)](https://travis-ci.org/pr4bh4sh/docker-go-selenium)

Docker compose project for running selenium tests with gocd

Fix username for your machine

  `sed -i.bu 's/user-name/'$(whoami)'/g' docker-compose.yaml`

Explanation: It will replace user name for `.m2` directory to with current user and create a backup of the file.
