FROM ros:galactic-ros1-bridge

SHELL ["/bin/bash", "-c"]
ENV DEBIAN_FRONTEND=noninteractive
ENV DEBCONF_NOWARNINGS=yes

RUN mkdir -p vrx_ws/src
WORKDIR vrx_ws
COPY vrx.repos .
RUN vcs import src < vrx.repos
RUN apt-get update
ENV ROS_DISTRO $ROS1_DISTRO
RUN rosdep update
RUN source /opt/ros/$ROS1_DISTRO/setup.bash && rosdep install -y -i --from-paths . --ignore-src --rosdistro $ROS1_DISTRO
RUN source /opt/ros/$ROS1_DISTRO/setup.bash && colcon build --symlink-install
COPY ./vrx_entrypoint.sh vrx_ws/
COPY ./bridge.launch.py vrx_ws/

ENTRYPOINT ["vrx_ws/vrx_entrypoint.sh"]