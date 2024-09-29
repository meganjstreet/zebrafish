import { Application } from "@hotwired/stimulus"

const application = Application.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

export { application }

import Splide from '@splidejs/splide'
import imagesLoaded from "imagesloaded"; // Import imagesLoaded


imagesLoaded('.splide__list', function() {
  const splide = new Splide('.splide', {
    type: 'loop',
    autoWidth: true,
    focus: 'center',
    gap: '100px',
    speed: 1200,
    height: '600px',
    perMove: 1,
    pagination: false,
  });

  splide.mount();
});


