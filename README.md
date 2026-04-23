# MLOps Docker Command Reference)
## Images
docker images
docker images java
docker images java:latest
2. Search & Pull
docker search ubuntu
docker search --filter stars=3 ubuntu
docker search --filter is-official=true ubuntu
docker pull java
3. Run Containers
docker run hello-world
docker run --name mycontainer ubuntu
docker run -it ubuntu
docker run -P ml-demo:v1
4. Container Listing
docker ps
docker ps -a
docker ps -aq
5. Stop & Remove
docker stop
docker rm
6. Windows CMD Bulk Cleanup
for /f "tokens=*" %i in ('docker ps -q') do docker stop %i
for /f "tokens=*" %i in ('docker ps -aq') do docker rm %i
7. Build Image Variations
docker build .
docker build -t first .
docker build -f Dockerfile.name -t image_name .
docker build . -f D:\path\Dockerfile
docker build D:\path -f D:\path\file.dockerfile -t image:v1
8. Dockerfile Basics
FROM, RUN, COPY, WORKDIR, CMD, EXPOSE
9. Logs & Debug
docker logs
10. Remove Images
docker image rm image_name
docker image rm -f image_name
11. Push to Docker Hub
docker tag image_id username/repo:tag
docker push username/repo:tag
12. Key MLOps Flow
Train → Track → Serve → Containerize
