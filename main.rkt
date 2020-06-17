#lang at-exp racket

(require website-js
	 (prefix-in html: (only-in website script))
	 "./util.rkt"
	 "./for-educators.rkt"
	 "./pos.rkt")

(render #:to "out"
	(list (pos)
	      (success)
	      (canceled)
	      (for-educators)))
