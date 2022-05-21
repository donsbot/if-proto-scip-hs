# Haskell client bindings to SourceGraphs SCIP format

This uses google's proto-lens generator for Haskell. More details at:

https://github.com/google/proto-lens#readme

Building:

Get a working GHC environment:

```
GHCUPVERSION=0.1.17.4
curl --proto '=https' --tlsv1.2 -sSf https://downloads.haskell.org/~ghcup/$GHCUPVERSION/x86_64-linux-ghcup-$GHCUPVERSION > /usr/bin/ghcup && \
chmod +x /usr/bin/ghcup
ghcup install ghc 8.10.7 --set
ghcup install cabal 3.6.0.0 --set
```

Install google's protoc compiler. See: https://github.com/google/proto-lens/blob/master/docs/installing-protoc.md

Then install the haskell generator from the proto-lens packages:

```
  cabal install proto-lens-protoc
```

To generate the source files manually, in src/*

```
  protoc --plugin=protoc-gen-haskell=`which proto-lens-protoc` 
    --haskell_out=proto \
    --proto_path=src
```

Build the library:

 > cabal build

