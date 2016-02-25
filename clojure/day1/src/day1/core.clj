(ns day1.core)

; Implement a function called (big st n) that returns true if a string st
; is longer than n characters.
(defn big
  [st n]
  (> (clojure.core/count st) n))

; Write a function called (collection-type col) that returns :list, :map,
; or :vector based on the type of collection col.
(defn collection-type
    [col]
    (cond
        (instance? clojure.lang.PersistentList col) :list
        (instance? clojure.lang.PersistentArrayMap col) :map
        (instance? clojure.lang.PersistentVector col) :vector
        :else :unknown))

(defn -main
    [& args]
    (println (big "stuff" 3))
    (println (big "stuff" 7))
    (println)
    (println (collection-type (list 1 2 3)))
    (println (collection-type {:one 1 :two 2 :three 3}))
    (println (collection-type [1 2 3]))
    (println (collection-type 3)))
