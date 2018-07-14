
# Clojure without the JVM

Thanks to [GraalVM](http://www.graalvm.org/)

specifically, building a 'native-image' so you don't need the JVM anymore.

Right.

## Getting Started


### compile the clojure into *.class files
```clojure
# cd hello
# lein repl
user=> (require 'com.example.hello)
nil
user=> (compile 'com.example.hello)
com.example.hello

user=> quit
# ./pull-in-clojure.sh
```

### build the docker images

```sh
./get-graalvm.sh
cd <basedir>
docker build -t tuddman/graalvm:latest .
cd hello
docker build -t hello-clj-on-graalvm .
```

# Docker base GraalVM

[tuddman/graalvm](https://hub.docker.com/r/tuddman/graalvm/)

# Thanks to ...

- [innoq](https://www.innoq.com/en/blog/native-clojure-and-graalvm/)
- [Oleg Ilyenko](https://github.com/OlegIlyenko/graalvm-native-image)
