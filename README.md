# Docker+GO-CI+Selenium

Docker compose project for running selenium tests with gocd

Fix username for your machine

  `sed -i.bu 's/user-name/'$(whoami)'/g' docker-compose.yaml`

Explanation: It will replace user name for `.m2` to current user and create a backup of the file.
