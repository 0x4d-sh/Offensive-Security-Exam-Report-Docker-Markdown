# Offensive Security Report Template (Docker)
Easy environment setup using docker for Pandoc Markdown report writing. 

This can be use for Offensive Security exams and other customised reports that uses LaTex if needed.

The output will be in `.pdf` file format.

# Getting Started
1. Build the docker image: `docker build -t <tag> .`
2. Run your docker image in a container: `docker run --name <container name> -v "<path/to/folder/in/host>":/home/report/out -it <tag> /bin/bash`

## Usage
Run `run.sh` to generate report from report template referenced from the `templates` folder. Copy file to mounted `home/report/out` to retrieve the report.

Alternatively, file can be copy out of the container, using `docker cp <container name>:<path/to/file/in/container> "<path/to/location/in/host>"`

## Customise
For further template customisation, please refer to [Offensive Security Exam Report Template in Markdown](https://github.com/noraj/OSCP-Exam-Report-Template-Markdown.git)

# Thank you
This repo originates from [Offensive Security Exam Report Template in Markdown](https://github.com/noraj/OSCP-Exam-Report-Template-Markdown.git)