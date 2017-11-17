## Tinfoleak

![tinfoleak_logo](http://www.vicenteaguileradiaz.com/images/tinfoleak_logo.PNG)

**“The most complete open-source tool for Twitter intelligence analysis”**

You can read more about the tool at it's [website](http://www.vicenteaguileradiaz.com/tools/).

### How the docker container works ?

When you build the container image, the Twitter API credentials will be copied from the host to container for further use. When you start a container, `tinfoleak.py` file will be executed along with the extra arguments passed with the container. Once the execution of the script is completed, a simple server is created (with the help of python's SimpleHTTPServer). Then open the URL [**0.0.0.0:8000**](http://0.0.0.0:8000) in the browser to view the result.

### Steps to build the container

**First fill the credentials in `tinfoleak.conf`. This file automatically gets copied to the container you build.**

- Execute the following command to create a Docker image locally:
  ```bash
  docker build -t tinfoleak .
  ```
- To create a container from the image, execute:
  ```bash
  docker run -p 8000:8000 -it tinfoleak -h
  ```
- To run the container for single use, execute the command:
  ```bash
    docker run --rm -p 8000:8000 -it tinfoleak -h
  ```
  **Note:** Executing the above command, deletes the container after you exit from it. The data stored in it will also get deleted. Don't use this command unless you feel to.
