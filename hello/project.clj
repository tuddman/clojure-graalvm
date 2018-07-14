(defproject hello "0.1.0-SNAPSHOT"
  :dependencies [[org.clojure/clojure "1.9.0"]
                 [org.clojure/core.specs.alpha "0.2.36"]
                 [org.clojure/spec.alpha "0.2.168"]]
  :profiles {:dev {:dependencies [[org.clojure/test.check "0.9.0"]]}})
