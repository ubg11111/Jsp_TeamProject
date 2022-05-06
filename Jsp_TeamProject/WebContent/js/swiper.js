const swiper = new Swiper('.swiper', {
  
  spacebBetween: 30,
  centeredSlides: true,
  autoplay:{
	delay: 2500,
	disableOnInteraction: false,
  },
  // If we need pagination
  pagination: {
    el: '.swiper-pagination',
	type: "fraction",
  },

  // Navigation arrows
  navigation: {
    nextEl: '.swiper-button-next',
    prevEl: '.swiper-button-prev',
  },
});