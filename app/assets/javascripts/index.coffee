# * affix the navbar after scroll below header */
$('#mainNav').affix({
  offset: {
    top: $('header').height()-$('#mainNav').height()
  }
});

# * highlight the top nav as scrolling occurs */
$('body').scrollspy({ target: '#nav' })

# * smooth scrolling for scroll to top */
$('.scroll-top').click( ->
  $('body,html').animate({scrollTop:0},1000)
)

#/* smooth scrolling for nav sections */
$('#nav .navbar-nav li>a').click( ->
  link = $(this).attr('href')
  posi = $(link).offset().top
  $('body,html').animate({scrollTop:posi},700)
)