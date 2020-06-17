#lang racket 

(provide for-educators)

(require website-js
	 "./util.rkt")
	 
(define (for-educators)
  (page for-educators.html
        (content 
          #:head 
	  (list (include-css "wp-content/themes/learntomod/style.css"))
	  (ltm-nav)
	  (page-header
	    (h1 "LearnToMod is Great for Educators!")
            ))))
