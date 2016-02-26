;  • A barber shop takes customers.
;  • Customers arrive at random intervals, from ten to thirty milliseconds.
;  • The barber shop has three chairs in the waiting room.
;  • The barber shop has one barber and one barber chair.
;  • When the barber’s chair is empty, a customer sits in the chair,
; wakes up the barber, and gets a haircut.
;  • If the chairs are occupied, all new customers will turn away.
;  • Haircuts take twenty milliseconds.
;  • After a customer receives a haircut, he gets up and leaves.
; Write a multithreaded program to determine how many haircuts a barber
; can give in ten seconds.

(ns day-3.core)

(def barber-chair (ref []))
(def waiting-room (ref []))
(def num-cuts (ref 0))
(def num-turnaway (ref 0))

(declare cut-hair get-next-customer)

(defn cut-hair []
  (do
    (Thread/sleep 20)
    (dosync
      (ref-set barber-chair [])
      (alter num-cuts + 1)
      (get-next-customer))))

(defn get-next-customer []
  (if (not (empty? @waiting-room))
    (do
    (dosync
      (let 
        [next-customer (first @waiting-room)]
        (ref-set barber-chair [next-customer])
        (alter waiting-room rest)))
     (cut-hair))))

(defn customer-arrive [customer]
  (dosync
    (if (empty? @barber-chair)
      (do
        (ref-set barber-chair [customer])
        (future-call cut-hair))   
      (if (< (count @waiting-room) 3)
        (alter waiting-room concat [customer])
        (alter num-turnaway + 1)))))

(def send-customers
  (future
    (while true 
      (do
        (Thread/sleep (+ 10 (rand-int 20)))
        (customer-arrive :cust)
        ))))

(Thread/sleep (* 10 1000))
(println @num-cuts)
(println @num-turnaway)
(shutdown-agents)
