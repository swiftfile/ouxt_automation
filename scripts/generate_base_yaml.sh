colcon list --base-paths $1 --names-only | xargs -I {} echo -e "{}:\n  ubuntu : [ ros-galactic-{}, ros-foxy-{}, ros-dashing-{} ]"