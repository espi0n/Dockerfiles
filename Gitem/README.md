## Gitem

`Gitem` is a tool for performing Github organizational reconnaissance.

## Steps to build the container

- Execute the following command to create a Docker image locally:
  ```bash
  docker build -t gitem .
  ```

- To create a container from the image, execute:
  ```bash
  docker run -it gitem /bin/bash
  ```

- To run the container for single use, execute the command:
  ```bash
  docker run --rm -it gitem /bin/bash
  ```

  **Remember:** Executing the above command, deletes the container after you exit from it. *The data stored in it will also get deleted*. Don't use this command unless you feel to.
