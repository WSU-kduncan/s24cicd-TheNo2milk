# Project 4
## 4.1 - Dockerize it
### CI Project Overview
- I'm containerizing an application with Docker to learn how docker works.
- I'm attempting to use a Docker file to make a nginx image to host a website on my local host.
### Run Project Locally
#### I installed Docker Desktop from Docker's website and it downloaded all the necessary dependencies from that.
>
#### After creating a Dockerfile, you will want to go into your commandline and run the command:
> "docker build -t {ImageName} ."
* *the -t allows you to name the image (it must be all lowercase letters) & be sure you are in the directory that the file is in!*
>
#### After building the image in the previous step, you will want to go back into your commandline and run the command:
> "docker run -d -p 8080:80 dockerfile"
* *the -d allows you to detatch from hosting your cose allowing you to still access the terminal as the container runs*
* *the -p allows you to publish what you've done to the host, in this case pushes the index.html to the wbpage* 
>
#### I used localhost:8080 as in my run instructions under -p i published it only to the 8080 port of my localhost


## 4.2 - GitHub Actions and DockerHub


### Process to create public repo in DockerHub
#### *once logged into DockerHub and on the home page press the button in the top right labeled 'Create repository', give it a name, choose to be either public or private and save.*

### How to authenticate with DockerHub via CLI using Dockerhub credentials
> docker login -u {Username}
#### *after this it will prompt you for a password to finish logging in.*

### what credentials would you recommend providing?
#### *I reccomend using the docker token it generates for you when you make an Access Token*

### How to push container image to Dockerhub (without GitHub Actions)
> docker tag {LocalRepoName} {Username}/{repo name}
> docker push {Username}/{repo name}
#### *reminder that you need to be logged into docker to do these*

### Link to your DockerHub repository
#### *hub.docker.com/repository/docker/theno2milk/ceg3120*

### Configuring GitHub Secrets

#### How to set a secret
> 1. go to the settings tab of your public repo
> 2. enter the secrets & variables section under security
> 3. under the Actions subcategory you have access to create secrets.
##### *Repository secrets let you store secrets for later use in actions*

#### What secret(s) are set for this project
##### *I have my DockerHub Username and Password set as two seperate secrets*

### Behavior of GitHub workflow

#### what does it do and when
##### *it runs a preset action you write and it runs it when you push the action to a branch of your choosing (mostly main)*

#### what variables in workflow are custom to your project
##### *I changed the call for my DockerHub Username & Password*
##### *I also changed the repo name within the active workflow*
