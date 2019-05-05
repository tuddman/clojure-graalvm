(defproject hello "0.1.0-SNAPSHOT"
  :dependencies [[org.clojure/clojure "1.10.0"]
                 [org.clojure/core.specs.alpha "0.2.44"]
                 [org.clojure/spec.alpha "0.2.176"]]
  :profiles {:dev {:dependencies [[org.clojure/test.check "0.9.0"]]}})
