## Datasploit

```
   ____/ /____ _ / /_ ____ _ _____ ____   / /____   (_)/ /_
  / __  // __ `// __// __ `// ___// __ \ / // __ \ / // __/
 / /_/ // /_/ // /_ / /_/ /(__  )/ /_/ // // /_/ // // /_  
 \__,_/ \__,_/ \__/ \__,_//____// .___//_/ \____//_/ \__/  
                               /_/                         
                                                           
            Open Source Assistant for #OSINT               
              Website: www.datasploit.info                 
```

An OSINT Framework to perform various recon techniques, aggregate all the raw data, and give data in multiple formats

## Steps to build the container

**First fill the credentials in `config.py`. This file automatically gets copied to the container you build.**

- Execute the following command to create a Docker image locally:
  ```bash
  docker build -t datasploit .
  ```

- To create a container from the image, execute:
  ```bash
  docker run -it datasploit /bin/bash
  ```

- To run the container for single use, execute the command:
  ```bash
  docker run --rm -it datasploit /bin/bash
  ```

  **Remember:** Executing the above command, deletes the container after you exit from it. *The data stored in it will also get deleted*. Don't use this command unless you feel to.
