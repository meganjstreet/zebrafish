import { Controller } from "@hotwired/stimulus"


// Connects to data-controller="swiper"
export default class extends Controller {
  connect() {

    const swiper = new Swiper('.swiper', {
      // Optional parameters
      loop: true,
      speed: 1000,
      autoplay: {
          delay: 3000,
      },
      effect: 'coverflow',
      grabCursor: true,
      // 
      centeredSlides: true,
      slidesPerView: 3,
      coverflowEffect: {
          rotate: 0,
          stretch: 0,
          // depth: 200,
          // modifier: 1,
          slideShadows: false,
      },

      // Navigation arrows
      navigation: {
        nextEl: '.swiper-button-next',
        prevEl: '.swiper-button-prev',
      },

    });

  }
}
