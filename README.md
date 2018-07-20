
# Clojure without the JVM

Thanks to [GraalVM](http://www.graalvm.org/)

specifically, building a 'native-image' so you don't need the JVM anymore.

Right.

## Contents

This repo contains the base GraalVM (with native-image) docker image, which can be used to then build a clojure application into a native binary.

A bare-bones example clojure application is located in the `/example` directory.

## Getting Started

### compile the clojure into *.class files
```clojure
# cd example/hello
# lein repl
user=> (require 'com.example.hello)
nil
user=> (compile 'com.example.hello)
com.example.hello
user=> quit
Bye for now!

# ./pull-in-clojure.sh
```

## get the docker image

```sh
docker pull tuddman/graalvm:latest
```

_or_

## build the docker images from source

### build base GraalVM docker image

```sh
cd <basedir>
docker build -t tuddman/graalvm:latest .
```

### build clojure example docker image

```sh
cd example/hello
docker build -t hello-clj-on-graalvm .
```

### see how much smaller the compiled binary is

```sh
$ docker inspect hello-clj-on-graalvm | jq .[0].Size
```

# Docker base GraalVM

[tuddman/graalvm](https://hub.docker.com/r/tuddman/graalvm/)

# Thanks to ...

- [innoq](https://www.innoq.com/en/blog/native-clojure-and-graalvm/)
- [Oleg Ilyenko](https://github.com/OlegIlyenko/graalvm-native-image)
