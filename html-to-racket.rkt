#lang at-exp racket

(provide html->element
	 html->list)

(require xml)

;TODO: Move this to website when it works

(define (convert-attr a)
  (define k (first a))
  (define v (second a))

  (define k: (string->symbol
	       (~a 
		 (symbol->string k)
		 ":")))

  (list k: v))

(define (convert-to-website-syntax l)

  (if (list? l)
      (let ()
	(define tag (first l))
	(define attrs (second l))
	(define content (drop l 2))
	(append (list tag)
		(flatten (map convert-attr attrs))
		(map convert-to-website-syntax content)))
      l))


(define (html->element html-string)
  (local-require website)
  (eval
    (html->list html-string)
    (module->namespace 'website)))

(define (html->list html-string)
    (convert-to-website-syntax
      (xml->xexpr
	((eliminate-whitespace '(span nav html body head header footer))
	 (document-element
	   (read-xml (open-input-string html-string)))))))

(module+ 
  test
  (html->element
    @~a{
    <div class="container cf">
    <img src="wp-content/uploads/2016/03/WebBanner-ClearBackground_ParentVertical-e1458841641347.png" alt=""> </img>
    <h1>
    LearnToMod is Free for Educators!		</h1>
    <p>By partnering with the National Science Foundation, we're able to bring LearnToMod to all teachers at 0 cost.</p>
    <p><a href="http://www.learntomod.com/teacher-sign-up/" class="button">Start Your Minecraft Education</a></p>
    </div>
    }))
