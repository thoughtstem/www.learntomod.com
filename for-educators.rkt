#lang at-exp racket 

(provide for-educators)

(require website-js
	 "./util.rkt"
	 )
	 
(define (for-educators)
  (page for-educators.html
        (ltm-content 
          #:body-classes "page-template-tpl-blocks page-template-tpl-blocks-php page page-id-104"
          (page-header
	    (img alt: "" src: "wp-content/uploads/2016/03/WebBanner-ClearBackground_ParentVertical-e1458841641347.png") 
            (h1 "LearnToMod is Great for Educators!") 
            (p "We've worked with teachers all over the world for years to teach computer science education!") 
	    )
          (main-content
            (gray-jumbo #:id "block1"
                        (div class: "image" 
                             (img alt: "" src: "wp-content/uploads/2016/03/content3.jpg"))
                        (div class: "content" 
                            (h2 "Teach Computer Science With Us")
                            (p "We offer the LearnToMod software at bulk discounts to all educators (for-profit and non-profit, alike) to use with their students. That includes libraries and educational organizations like coding clubs.")
                            (h3 "Teacher Account Features")
                            (ul class: "checks" 
                                (li "Separate students into classes. Students will have access to all the same features available in the paid version of LearnToMod, including the 250+ computer science badges")
                                (li "Monitor student progress as they progress through" nbsp "badges")
                                (li "You can either buy " (a href: "https://minecraft.net/" target: "_blank" "Minecraft") " accounts for your classroom, or use our free, built-in Vox-L testing tool")) 
                            (p 
                              (a class: "button" href: "mailto:contact@learntomod.com" target: "_blank" "Email Us About Bulk Pricing")))
                        (blockquote 
                          (div class: "quote" "\nWe love the LearnToMod project, and our students and campers love it too! It's a very powerful way to combine learning with fun! Just like hiding spinach in the spaghetti sauce...!\t\t\t\t\t\t")
                          (div class: "author" "\n-Shannon Landin, Codecraft Lab (Melbourne, Florida)\t\t\t\t\t\t"))	
                        )
            (gray-jumbo #:id "block2"
                        (div class: "image" 
                             (img alt: "" src: "wp-content/uploads/2016/03/AdobeStock_39617198.jpeg"))  
                        (div class: "content" 
                             (h2 "LearnToMod: Motivating Student Learning")
                             (p "Every aspect of LearnToMod was designed specifically with learning in mind. We’ve" nbsp "used our" nbsp "years of research experience in Computer Science Education to design an engaging, educational experience for you and your students! Plus, from our own experience teaching hundreds of kids " (a href: "http://www.thoughtstem.com/home" target: "_blank" "around San Diego") ", we can attest that LearnToMod really does get kids excited about coding!")
                             )
                        (blockquote 
                          (div class: "quote" "As a teacher, I appreciate a platform that gives me support when I need it, and enables me to assign my own mod challenges for students to solve.")
                          (div class: "author" "-Melanie Kusmik, TechVenture Kids (Issaquah, WA)")) 
                        )

            (green-jumbo #:id "block3"
                         (h2)
                         (h2 style: "text-align: center;" "Get Your Teacher Account " "&" " Start Your #MinecraftEd")
                         (p style: "text-align: center;" "You can purchase a LearnToMod account today! Email us so that we can upgrade your account to a teacher account and send you more information about bulk pricing for your students!") 
                         (p style: "text-align: center;" (a class: "button" href: "mailto:contact@learntomod.com" "Get Started Today " (i class: "icons8-forward")))  
                         
                         )
            #;(map-jumbo #:id "block4" #:style "margin-bottom:0px;" 
                       (h2 "Educators in Over 70 Countries Use LearnToMod to Teach Coding")
                       (div id: "map")
                      ;;SCRIPT FOR GOOGLE MAP MISSING 
                       )
            (resources-jumbo #:id "block6"
              (h2 "ADDITIONAL TEACHER RESOURCES")
              (ul style: "display:flex; flex-direction:row; justify-content: center;"
                (li
                  (a href: "https://drive.google.com/file/d/1Zk_uyMMvEgGWTpCL9SuIwTu1P6FCOTu2/view?usp=sharing" target: "_blank"
                    (img src: "wp-content/uploads/2016/03/LTM-Teachers-Guide.png" alt: "LTM Teachers Guide")
                    "Guide to Using Your Teacher Account"
                    )
                  )
                (li
                  (a href: "contact-us" target: "_blank"
                    (img src: "wp-content/uploads/2016/03/Customer_Support_Email_new.png" alt: "E-mail our Customer Support")
                    "E-mail Customer Support"
                    )
                  )
                (li
                  (a href: "index.html@p=87.html#block5" target: "_blank"
                    (img src: "wp-content/uploads/2016/03/book_border.png" alt: "book cover for modding minecraft for dummies book")
                    "Looking for a Classroom Textbook? Minecraft Modding for Kids"
                    )
                  )
                (li
                  (a href: "faq" target: "_blank"
                    (img src: "wp-content/uploads/2016/03/FAQ.png" alt: "FAQ Page image")
                    "Find Common Questions & Answers"
                    )
                  )
                )
              ))
  
          )))




#;(html->list
  @~a{
  
  })


