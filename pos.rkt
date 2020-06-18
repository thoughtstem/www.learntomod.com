#lang at-exp racket 

(provide pos
	 success
	 canceled)

(require website-js
	 (prefix-in html: (only-in website script))
	 "./util.rkt")

(define mode (make-parameter 'test))

(define (stripe-price)
  (if (eq? (mode) 'test) 
      "learntomodsubscription_2_1year_29.99"
      "learntomod(1-year)_2_1year_29.99"))

(define (stripe-key)
  (if (eq? (mode) 'test) 
      "pk_test_TI5kNWFmWEn7pNgnFl7HkHxW"
      "pk_live_MmLDMcIYCNUlexcExwZ0sHdM"))
	 
(define (pos)
  (page sign-up-2.html
        (ltm-content 
          #:head
          (html:script src: "https://js.stripe.com/v2/")
	  #:body-classes
          "page-template-tpl-faq page-template-tpl-faq-php page"
          (page-header
	    (h1 "Start Modding Minecraft for $29.99!")
            (p "Hundreds of Minecraft Videos, Tutorial Lessons, and Badges."))
	  (main-jumbo
	    (p "After you purchase your recurring 1-yr LearnToMod subscription below, we’ll send you an access key by e-mail (to the email you enter during purchase) with login instructions. Use your access key to create a new LearnToMod account, and start modding today!")
	    (p "To opt out of auto-renewal, email contact@learntomod.com with your receipt at any time")
            (buy-button)))))

(define (success)
  (page success.html
        (ltm-content 
	  (page-header
	    (h1 "Success!")
            (p "Your access key should arrive by email shortly.  If not, contact us at contact@learntomod.com")))))

(define (canceled)
  (page canceled.html
        (ltm-content 
	  (page-header
	    (h1 "Try again later!")
            (p "It looks like you didn't complete your purchase.  Contact us at contact@learntomod.com if you're having trouble.")))))


(define (buy-button)
  (enclose 
    (div
      (button
	style: "background-color:#6772E5;color:#FFF;padding:8px 12px;border:0;border-radius:4px;font-size:1em"
	id: "checkout-button-learntomod(1-year)_2_1year_29.99"
	role: "link"
	"Proceed to Checkout")
      (div id: "error-message"))

    (script ([dummy
	       @js{
	       (function() {
			   var stripe = Stripe('@(stripe-key)'.trim());

			   var checkoutButton = document.getElementById('checkout-button-learntomod(1-year)_2_1year_29.99');
			   checkoutButton.addEventListener('click', function () {
							   // When the customer clicks on the button, redirect
							   // them to Checkout.
							   stripe.redirectToCheckout({
										      lineItems: [{price: '@(stripe-price)'.trim(), quantity: 1}],
										      mode: 'subscription',
										      // Do not rely on the redirect to the successUrl for fulfilling
										      // purchases, customers may not always reach the success_url after
										      // a successful payment.
										      // Instead use one of the strategies described in
										      // https://stripe.com/docs/payments/checkout/fulfillment
										      successUrl: 'https://www.learntomod.com/success',
										      cancelUrl: 'https://www.learntomod.com/canceled',
										      })
							   .then(function (result) {
									  if (result.error) {
									  // If `redirectToCheckout` fails due to a browser or network
									  // error, display the localized error message to your customer.
									  var displayError = document.getElementById('error-message');
									  displayError.textContent = result.error.message;
									  }
									  });
							   });
			   })();
	       }
	       ]))))
