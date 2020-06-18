#lang at-exp racket 

(provide for-educators)

(require website-js
	 "./util.rkt"
	 "./html-to-racket.rkt"
	 )
	 
(define (for-educators)
  (page for-educators.html
        (ltm-content 
          (page-header
	    (h1 "LearnToMod is Great for Educators!")

	    (div class: "container cf" (img alt: "" src: "wp-content/uploads/2016/03/WebBanner-ClearBackground_ParentVertical-e1458841641347.png") (h1 "\nLearnToMod is Free for Educators!\t\t") (p "By partnering with the National Science Foundation, we're able to bring LearnToMod to all teachers at 0 cost.") (p (a class: "button" href: "http://www.learntomod.com/teacher-sign-up/" "Start Your Minecraft Education")))

	    )
          (main-content
            (gray-jumbo #:id "block1"
                        (h2 "Teach Computer Science With Us")
			
			)
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
              (h2 "ADDITIONAL TEACHER RESOURCES")))
          )))




(html->list
  @~a{
	    <div class="container cf">
	    <img src="wp-content/uploads/2016/03/WebBanner-ClearBackground_ParentVertical-e1458841641347.png" alt=""/>
	    <h1>
	    LearnToMod is Free for Educators!		</h1>
	    <p>By partnering with the National Science Foundation, we're able to bring LearnToMod to all teachers at 0 cost.</p>
	    <p><a href="http://www.learntomod.com/teacher-sign-up/" class="button">Start Your Minecraft Education</a></p>
	    </div>
	    })


