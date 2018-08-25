#!/bin/sh -e

get_latest_release() {
    curl https://api.github.com/repos/turingwars/turingwars/releases/latest | grep tag_name | cut -f4 '-d"'
}

load_from_github() {
    TURINGWARS_VERSION=$(get_latest_release)
    echo "Using version $TURINGWARS_VERSION"

    curl -L https://github.com/turingwars/turingwars/releases/download/$TURINGWARS_VERSION/turing-wars.tgz > web/turing-wars.tgz
}

load_from_source() {
    make -C "$1" build
    cp "$1/turing-wars.tgz" web/
}

args=
source=
while [ $# -gt 0 ]; do
    case $1 in
        "--source")
            shift
            source=$1
        ;;
        *)
            args="$args $1"
        ;;
    esac
    shift
done

if [ ! -z "$source" ]; then
    load_from_source "$source"
else
    load_from_github
fi

docker-compose build
docker-compose up $args
