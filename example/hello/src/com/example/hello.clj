(ns com.example.hello
  (:gen-class))

(defn -main []
  (println "hello graalVM. Running clojure " (clojure-version) " :-)" ))
