require "bundler/gem_tasks"
require 'dockerfile_ast'

task :parse do
  parser = DockerfileAst::Parser.new
  df = <<-DOCK
# this is a comment
FROM imightbeinatree/sshable

MAINTAINER Michael Orr <michael@cloudspace.com>

RUN echo 'hello world'
RUN['echo', 'hello world']

CMD command param1 param2

EXPOSE 21
ENV APP_ENV production

ADD source_file.sh target_file.sh
ENTRYPOINT command param1 param2

USER daemon
VOLUME ["/data"]
WORKDIR /path/to/workdir

ONBUILD RUN echo 'hello'
DOCK

  df = <<-DOCK
# Nginx
#
# VERSION               0.0.1

FROM      ubuntu
MAINTAINER Guillaume J. Charmes <guillaume@docker.com>

# make sure the package repository is up to date
RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list
RUN apt-get update

RUN apt-get install -y inotify-tools nginx apache2 openssh-server

# Firefox over VNC
#
# VERSION               0.3

FROM ubuntu
# make sure the package repository is up to date
RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list
RUN apt-get update

# Install vnc, xvfb in order to create a 'fake' display and firefox
RUN apt-get install -y x11vnc xvfb firefox
RUN mkdir /.vnc
# Setup a password
RUN x11vnc -storepasswd 1234 ~/.vnc/passwd
# Autostart firefox (might not be the best way, but it does the trick)
RUN bash -c 'echo "firefox" >> /.bashrc'

EXPOSE 5900
CMD    ["x11vnc", "-forever", "-usepw", "-create"]

# Multiple images example
#
# VERSION               0.1

FROM ubuntu
RUN echo foo > bar
# Will output something like ===> 907ad6c2736f

FROM ubuntu
RUN echo moo > oink
# Will output something like ===> 695d7793cbe4

# You'll now have two images, 907ad6c2736f with /bar, and 695d7793cbe4 with
# /oink.
DOCK
  puts parser.parse(df)
end
