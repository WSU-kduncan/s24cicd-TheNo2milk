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
