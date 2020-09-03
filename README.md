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

## TODO:
- build with nix (and from scratch)
- maybe add shellcheck as lint? :D
- add a testing suite that takes a sample image and pushes it to controlled instance of docker registry
- write docs
- maybe try to push this to Drone marketplace
