## Belati

![Belati-logo](https://github.com/aancw/Belati/raw/master/images/Belati-logo.png?raw=true)

Belati is tool for Collecting Public Data & Public Document from Website and other service for OSINT purpose. This tools is inspired by Foca and Datasploit for OSINT :)

## Steps to build the container

- Execute the following command to create a Docker image locally:
  ```bash
  docker build -t belati .
  ```

- To create a container from the image, execute:
  ```bash
  docker run -p 8000:8000 -it belati /bin/bash
  ```

  **Remember:** The above command forwards port 8000 on the host to port 8000 on the container. If you execute the above command twice, there might be a clash in the port allocation. To remove the error, you have to manually delete the previous docker container and recreate the container.

- To run the container for single use, execute the command:
  ```bash
  docker run --rm -p 8000:8000 -it belati /bin/bash
  ```

  **Remember:** Executing the above command, deletes the container after you exit from it. *The data stored in it will also get deleted*. Don't use this command unless you feel to.
