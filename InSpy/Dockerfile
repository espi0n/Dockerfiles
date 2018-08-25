FROM python:2.7-slim
RUN apt-get update
RUN apt-get install -y git
RUN git clone --depth=1 https://github.com/leapsecurity/InSpy /home/InSpy
WORKDIR /home/InSpy
RUN pip install -r requirements.txt
ENTRYPOINT ["python", "/home/InSpy/InSpy.py"]
