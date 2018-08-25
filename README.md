# Docker-based TuringWars infrastructure

## Get started

```
. ./env.example
./start.sh
```

This pulls the latest release from github and runs it in docker.

Use this command instead if you want to run the code from a local clone of the [turingwars/turingwars](https://github.com/turingwars/turingwars) repository.

```
./start.sh --source path/to/local/turingwars
```

## Configuration

Clone the turingwars configuration `turingwars.conf.json` to some othe place outside this repo. Update the values in there.

See all available configuration variables in `.env.example`. Make sure all of those are defined when running any of the scripts in this directory. Also, make sure that the mysql password matches that defined in `turingwars.conf.json`.
