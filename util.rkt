#lang at-exp racket

(provide ltm-nav
	 page-header
	 main-jumbo
         main-content
         gray-jumbo
         green-jumbo
         map-jumbo
         resources-jumbo
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

(define (main-jumbo . content)
  (div id: "main" class: "gray page"
       (div class: "container cf"
	    content )))

