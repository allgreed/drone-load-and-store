# repo-name
Repo description

## Prerequisites
- [nix](https://nixos.org/nix/manual/#chap-installation)
- direnv (`nix-env -i direnv`)

Hint: if something doesn't work because of missing package please add the package to `default.nix` instead of installing on your computer. Why solve the problem for one if you can solve the problem for all? ;)

## One-time setup
```
make init
```

## Everything
```
make help
```

## High level goals
- must work with Drone cloud (so no privilaged features)
- should mimic the API of the [default Docker plugin](http://plugins.drone.io/drone-plugins/drone-docker/)
- rewrite from bash to some real programming language is fine as long as the code and build process is kept simple

## TODO:
- build with nix (and from scratch)
- maybe add shellcheck as lint? :D
- add a testing suite that takes a sample image and pushes it to controlled instance of docker registry
- make a propper CI
- better error messages
