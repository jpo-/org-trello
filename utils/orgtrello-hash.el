;;; orgtrello-hash.el --- Build hash map easily

(defun orgtrello-hash--make-hash-org (level keyword title id)
  (setq h (make-hash-table :test 'equal))
  (puthash :level   level   h)
  (puthash :keyword keyword h)
  (puthash :title   title h)
  (puthash :id      id h)
  h)

(defun orgtrello-hash--make-hash (method uri &optional params)
  "Utility function to ease the creation of the map - wait, where are my clojure data again!?"
  (setq h (make-hash-table :test 'equal))
  (puthash :method method h)
  (puthash :uri    uri    h)
  (if params (puthash :params params h))
  h)

(provide 'orgtrello-hash)
