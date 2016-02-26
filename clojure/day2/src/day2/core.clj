(ns day2.core)

;  Implement an unless with an else condition using macros.
(defmacro unless [test body & [elsebody]]
  (list 'if (list 'not test ) body elsebody))

(macroexpand '(unless condition body elsebody))

(defn -main
  [& args]
  (unless true (println "nope"))
  (unless false (println "yup"))
  (unless true (println "nope") (println "yup"))
  (unless false (println "yup") (println "nope")))
