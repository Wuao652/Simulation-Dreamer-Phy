#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/dennis-18/Simulation-Dreamer-Phy/src/uuv_simulator/uuv_control/uuv_auv_control_allocator"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/dennis-18/Simulation-Dreamer-Phy/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/dennis-18/Simulation-Dreamer-Phy/install/lib/python2.7/dist-packages:/home/dennis-18/Simulation-Dreamer-Phy/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/dennis-18/Simulation-Dreamer-Phy/build" \
    "/usr/bin/python2" \
    "/home/dennis-18/Simulation-Dreamer-Phy/src/uuv_simulator/uuv_control/uuv_auv_control_allocator/setup.py" \
     \
    build --build-base "/home/dennis-18/Simulation-Dreamer-Phy/build/uuv_simulator/uuv_control/uuv_auv_control_allocator" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/dennis-18/Simulation-Dreamer-Phy/install" --install-scripts="/home/dennis-18/Simulation-Dreamer-Phy/install/bin"
