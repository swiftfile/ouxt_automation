FROM ros:galactic
ARG FLAGS

SHELL ["/bin/bash", "-c"]
ENV DEBIAN_FRONTEND=noninteractive
ENV DEBCONF_NOWARNINGS=yes

RUN sudo apt-get update && sudo apt-get -y install python3-pip python3-rospkg python3-rosdep
RUN mkdir -p /colcon_ws/src

WORKDIR /colcon_ws
COPY packages.repos /colcon_ws
RUN vcs import src < packages.repos
RUN source /opt/ros/galactic/setup.bash && rosdep install -iry --from-paths src --rosdistro galactic
RUN source /opt/ros/galactic/setup.bash && colcon build $FLAGS