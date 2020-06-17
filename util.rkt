#lang at-exp racket

(provide 
         ltm-nav
	 page-header
	 main-jumbo
         main-content
         gray-jumbo
         green-jumbo
         map-jumbo
         resources-jumbo
         ltm-footer
         )

(require website-js
	 (prefix-in html: (only-in website script)))

(define (page-header . content)
  (div id: "page-header" 
       (div class: "container cf"
	    content )))

(define (main-content . content)
  (div id: "main"
       content
       )
  )

(define (gray-jumbo #:id [section-id "block1"] . content)
  (section id: section-id class: "section standard-content"
           (div class: "container cf"
                content
                )
           )
  )

(define (green-jumbo #:id [section-id "block1"] . content)
  (section id: section-id class: "section cta-basic"
           (div class: "container cf"
                content
                )
           )
  )

(define (map-jumbo #:id [section-id "block1"] . content)
  (section id: section-id class: "section map"
           (div class: "container cf"
                content
                )
           )
  )

(define (resources-jumbo #:id [section-id "block1"] . content)
  (section id: section-id class: "section resources"
           (div class: "container cf"
                content
                )
           )
  )

(define (ltm-nav)
  @html/inline{
    @~a{
  	<header id="header" class="cf">
		<a href="index.html" id="logo"><img src="wp-content/themes/learntomod/images/logo.svg" alt="LearnToMod" /></a>
		<nav>
			<a href="index.html#" id="mobile-menu"><i class="icons8-menu"></i></a>
			<ul id="menu-main-menu" class="menu"><li id="menu-item-617" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-617"><a>Product</a>
<ul class="sub-menu">
	<li id="menu-item-612" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-612"><a href="index.html@"@"p=15.html">Features</a></li>
	<li id="menu-item-765" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-765"><a href="features/index.html#pricing">Pricing</a></li>
	<li id="menu-item-1714" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1714"><a href="index.html@"@"p=1545.html">Online Courses</a></li>
</ul>
</li>
<li id="menu-item-471" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-471"><a>Parents &#038; Educators</a>
<ul class="sub-menu">
	<li id="menu-item-93" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-93"><a href="index.html@"@"p=87.html">Parents</a></li>
	<li id="menu-item-107" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-107"><a href="index.html@"@"p=104.html">Educators</a></li>
</ul>
</li>
<li id="menu-item-472" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-472"><a>Community</a>
<ul class="sub-menu">
	<li id="menu-item-157" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-157"><a href="http://forum.learntomod.com/">Official LearnToMod Forum <i class="icons8-external-link"></i></a></li>
	<li id="menu-item-156" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-156"><a href="blog/index.html">Blog</a></li>
</ul>
</li>
<li id="menu-item-618" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-618"><a>Our Company</a>
<ul class="sub-menu">
	<li id="menu-item-26" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-26"><a href="index.html@"@"p=6.html">About Us</a></li>
	<li id="menu-item-158" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-158"><a href="about/index.html#block2">Our Team</a></li>
	<li id="menu-item-770" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-770"><a href="index.html@"@"p=767.html">Sponsors &#038; Partners</a></li>
</ul>
</li>
<li id="menu-item-473" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-473"><a>Support</a>
<ul class="sub-menu">
	<li id="menu-item-165" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-165"><a href="index.html@"@"p=160.html">FAQ</a></li>
	<li id="menu-item-164" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-164"><a href="index.html@"@"p=162.html">Contact Us</a></li>
</ul>
</li>
<li id="menu-item-32" class="divider account menu-item menu-item-type-custom menu-item-object-custom menu-item-32"><a href="https://mod.learntomod.com">Login</a></li>
<li id="menu-item-29" class="start menu-item menu-item-type-post_type menu-item-object-page menu-item-29"><a href="index.html@"@"p=24.html">Sign Up</a></li>
</ul>		</nav>
	</header>
 
  }}
  )

(define (ltm-footer)
  (footer id: "footer" class: "container cf"
          (nav id: "footer-links"
               (ul id: "menu-footer-menu" class: "menu"
                   (li id: "menu-item-474" class: "menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-474"
                       (a "Product")
                       (ul class: "sub-menu"
                           (li id: "menu-item-131" class: "menu-item menu-item-type-custom menu-item-object-custom menu-item-131"
                               (a href: "https://www.learntomod.com/features/#section1" 'onclick: "__gaTracker('send', 'event', 'outbound-widget', 'https://www.learntomod.com/features/#section1', 'Modding Tutorials');" "Modding Tutorials"))
                           (li id: "menu-item-132" class: "menu-item menu-item-type-custom menu-item-object-custom menu-item-132"
                               (a href: "https://www.learntomod.com/features/#section2" 'onclick: "__gaTracker('send', 'event', 'outbound-widget', 'https://www.learntomod.com/features/#section2', 'Vox-L Game Engine');" "Vox-L Game Engine"))
                           (li id: "menu-item-133" class: "menu-item menu-item-type-custom menu-item-object-custom menu-item-133"
                               (a href: "https://www.learntomod.com/features/#section3" 'onclick: "__gaTracker('send', 'event', 'outbound-widget', 'https://www.learntomod.com/features/#section3', 'Private Minecraft Servers');" "Private Minecraft Servers"))
                           (li id: "menu-item-134" class: "menu-item menu-item-type-custom menu-item-object-custom menu-item-134"
                               (a href: "https://www.learntomod.com/features/#section4" 'onclick: "__gaTracker('send', 'event', 'outbound-widget', 'https://www.learntomod.com/features/#section4', 'Texture Pack Painter');" "Texture Pack Painter"))
                           (li id: "menu-item-135" class: "menu-item menu-item-type-custom menu-item-object-custom menu-item-135"
                               (a href: "https://www.learntomod.com/features/#section5" 'onclick: "__gaTracker('send', 'event', 'outbound-widget', 'https://www.learntomod.com/features/#section5', 'Schematics Builder');" "Schematics Builder"))
                           (li id: "menu-item-1732" class: "menu-item menu-item-type-post_type menu-item-object-page menu-item-1732"
                               (a href: "index.html@p=1545.html" "Online Courses"))))
                   (li id: "menu-item-475" class: "menu-item menu-item-type-custom menu-item-object-custom current-menu-ancestor current-menu-parent menu-item-has-children menu-item-475"
                       (a "Parents & Educators")
                       (ul class: "sub-menu"
                          (li id: "menu-item-137" class: "menu-item menu-item-type-post_type menu-item-object-page menu-item-137"
                              (a href: "index.html@p=87.html" "Parents"))
                          (li id: "menu-item-136" class: "menu-item menu-item-type-post_type menu-item-object-page current-menu-item page_item page-item-104 current_page_item menu-item-136"
                              (a href: "index.html@p=104.html" "Educators"))))
                   (li id: "menu-item-476" class: "menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-476"
                       (a "Community")
                       (ul class: "sub-menu"
                           (li id: "menu-item-152" class: "menu-item menu-item-type-custom menu-item-object-custom menu-item-152"
                               (a href: "http://forum.learntomod.com/" 'onclick: "__gaTracker('send', 'event', 'outbound-widget', 'http://forum.learntomod.com/', 'Official LearnToMod Forum ');" "Official LearnToMod Forum"
                                  (i class: "icons8-external-link")))
                           (li id: "menu-item-155" class: "menu-item menu-item-type-post_type menu-item-object-page menu-item-155"
                               (a href: "blog/index.html" "News & Updates"))))
                   (li id: "menu-item-37" class: "menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-37"
                       (a href: "index.html@p=6.html" "Our Company")
                       (ul class: "sub-menu"
                           (li id: "menu-item-168" class: "menu-item menu-item-type-custom menu-item-object-custom menu-item-168"
                               (a href: "http://www.learntomod.com/about/#block2" 'onclick: "__gaTracker('send', 'event', 'outbound-widget', 'http://www.learntomod.com/about/#block2', 'Our Team');" "Our Team"))
                           (li id: "menu-item-769" class: "menu-item menu-item-type-post_type menu-item-object-page menu-item-769"
                               (a href: "index.html@p=767.html" "Sponsors & Partners"))))
                   (li id: "menu-item-477" class: "menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-477"
                       (a href: "index.html@p=104.html#" "Support")
                       (ul class: "sub-menu"
                           (li id: "menu-item-167" class: "menu-item menu-item-type-post_type menu-item-object-page menu-item-167"
                               (a href: "index.html@p=160.html" "FAQ"))
                           (li id: "menu-item-166" class: "menu-item menu-item-type-post_type menu-item-object-page menu-item-166"
                               (a href: "index.html@p=162.html" "Contact Us")))))
               )
          (div id: "sub-footer" class: "cf"
               (div style: "float:left;"
                    (p style: "margin-left: 14px; margin-bottom: -10px;" "Created by")
                    (a href: "http://multidimensionalgames.com" target: "_blank"
                       (img width: "300" src: "wp-content/themes/learntomod/images/logo_text.svg" alt: "Multi-Dimensional Games Logo")
                       ))
               (div id: "social"
                    (a href: "https://www.facebook.com/learntomod"
                       (i class: "icons8-facebook-filled"))
                    (a href: "https://twitter.com/learntomod"
                       (i class: "icons8-twitter-filled"))
                    (a href: "https://www.youtube.com/channel/UCp19G1Eo1vX4NWTaMxerawg"
                       (i class: "icons8-youtube")))
               (nav
                 (ul id: "menu-sub-footer-menu" class: "menu"
                     (li id: "menu-item-76" class: "menu-item menu-item-type-post_type menu-item-object-page menu-item-76"
                         (a href: "index.html@p=68.html" "Community Guidelines"))
                     (li id: "menu-item-75" class: "menu-item menu-item-type-post_type menu-item-object-page menu-item-75"
                         (a href: "index.html@p=70.html" "Privacy Policy"))
                     (li id: "menu-item-74" class: "menu-item menu-item-type-post_type menu-item-object-page menu-item-74"
                         (a href: "index.html@p=72.html" "Terms of Use"))))
               (p style: "clear:both; padding-left: 10px; padding-top: 10px; color: gray; font-size: 14px;" "LearnToMod IS NOT AN OFFICIAL MINECRAFT PRODUCT. NOT APPROVED BY OR ASSOCIATED WITH MOJANG.")
               )
          )
  )

(define (main-jumbo . content)
  (div id: "main" class: "gray page"
       (div class: "container cf"
	    content )))

