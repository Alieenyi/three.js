#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source "$DIR/setup_test_env.bash"

blender --background $BLEND/torusA.blend --python $PYSCRIPT -- \
    $JSON --vertices --faces --normals --indent
makereview $@ --tag $(tagname)
