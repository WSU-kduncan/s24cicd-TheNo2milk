Project 5

Part 1 - Semantic Versioning

CD Project Overview

The Continuous Delivery (CD) project efficently supplies software through automated processes using Git and GitFlow for version control and branching respectively. Docker and Github actions are used to build, test, and deploy changes. Many tests are included in the CD pipeline. The goal is to creatue and agility based software development environment that has iterative enhancements. 

How to generate a tag in Git

Navigate to Respository in command line,
Choose the commit to tag,
Create the tag using git tag [tag_name],
Push to remote host

How to generate a tag in GitHub

Navigate to Respository,
Go to "Releases" tab,
Draft a new release,
Fill the release form and Publish the release

Behavior of GitHub workflow

The GitHub Workflow only triggers when:
 a push to the main branch happens
 a tag event matches the version pattern [v*.*.*]
 a pull request targets the main branch

The Github Workflow does the following:
 Checkout the repository's code
 set up cross platform Docker Builds
 Generate Docker tags based on metadata
 Logs into Dockerhub using the login secrets
 Builds and Pushes the Docker images to dockerhub using the given tags

Link to Docker Hub repository (as additional proof)

["CEG 3120 DockerHub Repository"](https://hub.docker.com/repository/docker/theno2milk/ceg3120/general)
