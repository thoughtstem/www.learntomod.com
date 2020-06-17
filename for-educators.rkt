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
            (h1 "LearnToMod is Great for Educators!"))
          (main-content
            (gray-jumbo #:id "block1"
                        (h2 "Teach Computer Science With Us"))
            (gray-jumbo #:id "block2"
                        (h2 "LearnToMod: Motivating Student Learning"))

            (green-jumbo #:id "block3"
                         (h2 "Get Your Teacher Account & Start Your #MinecraftEd") 
                         )
            (map-jumbo #:id "block4"
                       (h2 "Educators in Over 70 Countries Use LearnToMod to Teach Coding")
                       )
            (gray-jumbo #:id "block5"
                        (h2 "How Can You Support LearnToMod?")
                        )
            (resources-jumbo #:id "block6"
              (h2 "ADDITIONAL TEACHER RESOURCES")
              )
            )
          (ltm-footer)
          )))
