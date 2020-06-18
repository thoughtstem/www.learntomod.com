#lang at-exp racket 

(provide for-educators)

(require website-js
	 "./util.rkt"
	 "./html-to-racket.rkt"
	 )
	 
(define (for-educators)
  (page for-educators.html
        (ltm-content 
          #:body-classes "page-id-104"
          (page-header
	    (img alt: "" src: "wp-content/uploads/2016/03/WebBanner-ClearBackground_ParentVertical-e1458841641347.png") 
            (h1 "LearnToMod is Great for Educators!") 
            (p "By partnering with the National Science Foundation, we're able to bring LearnToMod to all teachers at 0 cost.") 
            (p i
               (a class: "button" href: "http://www.learntomod.com/teacher-sign-up/" "Start Your Minecraft Education"))
	    )
          (main-content
            (gray-jumbo #:id "block1"
                        (div class: "image" 
                             (img alt: "" src: "wp-content/uploads/2016/03/content3.jpg"))
                        (div class: "content" 
                            (h2 "Teach Computer Science for Free With Us")
                            (p "We offer the LearnToMod software for free to all educators (for-profit and non-profit, alike) to use with their students. We also offer it free to libraries and educational organizations like coding clubs for Minecraft Education.")
                            (h3 "Teacher Account Features")
                            (ul class: "checks" 
                                (li "Grant your students access to create their own free LearnToMod accounts. Students will have access to all the same features available in the paid version of LearnToMod, including the 250+ computer science badges")
                                (li "Separate students into classes")
                                (li "Monitor student progress as they progress through" nbsp "badges")
                                (li "Until the class ends, students have unlimited, free access to LearnToMod and a few hours of access per day to our Minecraft servers, but only during class-time")
                                (li "Buy " (a href: "https://minecraft.net/" target: "_blank" "Minecraft") " accounts for your classroom," nbsp "or use our free, built-in Vox-L testing tool")) 
                            (p 
                              (a class: "button" href: "http://www.learntomod.com/teacher-sign-up/" "Get Started Now")))
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
                             (p "To get the latest tips on motivating student learning, join" nbsp "our free " (a href: "https://www.coursera.org/learn/learntomod" target: "_blank" "Coursera course" nbsp "for Educators") " using LearnToMod." nbsp "Get help from Computer Science Education Guru, Dr. Sarah Guthals, and get access to lesson plans developed by the LearnToMod Educator community!")
                             (p (a class: "button" href: "https://www.coursera.org/learn/learntomod" target: "_blank" "Join the Coursera Course")))
                        (blockquote 
                          (div class: "quote" "As a teacher, I appreciate a platform that gives me support when I need it, and enables me to assign my own mod challenges for students to solve.")
                          (div class: "author" "-Melanie Kusmik, TechVenture Kids (Issaquah, WA)")) 
                        )

            (green-jumbo #:id "block3"
                         (h2)
                         (h2 style: "text-align: center;" "Get Your Teacher Account " "&" " Start Your #MinecraftEd")
                         (p style: "text-align: center;" "Fill out our online form and within 48 hours you’ll receive a free LearnToMod teacher access key that you can use in your classroom, along with more instructions about how to use your account.") 
                         (p style: "text-align: center;" (a class: "button" href: "http://www.learntomod.com/teacher-sign-up/" "Get Started Today " (i class: "icons8-forward")))  
                         
                         )
            (map-jumbo #:id "block4"
                       (h2 "Educators in Over 70 Countries Use LearnToMod to Teach Coding")
                       (div id: "map")
                      ;;SCRIPT FOR GOOGLE MAP MISSING 
                       )
            (gray-jumbo #:id "block5"
                        (div class: "image" 
                             (img alt: "" src: "wp-content/uploads/2016/03/parent-and-child-on-computer.jpg"))
                        (div class: "content"
                             (h2 "How Can You Support" nbsp "LearnToMod?") 
                             (p "Although the NSF has helped to fund LearnToMod’s early" nbsp "development, subscription purchases of the software help fund our developers so that we can continue to release new material that’s engaging for students!")
                             (p "We hope that you’ll encourage your students to " (a href: "http://www.learntomod.com/sign-up/" "purchase") nbsp "a copy of LearnToMod after your class ends, so that they can continue to learn and create" nbsp "at home! These purchases also allow us" nbsp "to create new CS curriculum and new classroom tools.")) 
                        )
            (resources-jumbo #:id "block6"
              (h2 "ADDITIONAL TEACHER RESOURCES")
              (ul
                (li
                  (a href: "https://s3.amazonaws.com/cdn.freshdesk.com/data/helpdesk/attachments/production/5012469068/original/Guide_to_LearnToMod_Teacher_Accounts_Apr2015.pdf?AWSAccessKeyId=AKIAJ2JSYZ7O3I4JO6DA&Expires=1461344937&Signature=bDNiZt5sQm%2B1mF35t5BOQOzrPPI%3D&response-content-type=application%2Fpdf" target: "_blank"
                    (img src: "wp-content/uploads/2016/03/LTM-Teachers-Guide.png" alt: "LTM Teachers Guide")
                    "Guide to Using Your Teacher Account"
                    )
                  )
                (li
                  (a href: "http://www.learntomod.com/about/contact/" target: "_blank"
                    (img src: "wp-content/uploads/2016/03/Customer_Support_Email_new.png" alt: "E-mail our Customer Support")
                    "E-mail Customer Support"
                    )
                  )
                (li
                  (a href: "http://www.learntomod.com/parents-educators/parents/#block5" target: "_blank"
                    (img src: "wp-content/uploads/2016/03/book_border.png" alt: "book cover for modding minecraft for dummies book")
                    "Looking for a Classroom Textbook? Minecraft Modding for Kids"
                    )
                  )
                (li
                  (a href: "https://www.coursera.org/learn/learntomod" target: "_blank"
                    (img src: "wp-content/uploads/2016/03/Coursera_Course_new_new.png" alt: "LTM Coursera Course Logo")
                    "Curriculum, Pedagogy: LearnToMod for Educators Coursera Community"
                    )
                  )
                (li
                  (a href: "http://www.learntomod.com/about/faq/" target: "_blank"
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


