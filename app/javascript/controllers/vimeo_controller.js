import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="vimeo"
export default class extends Controller {
  static targets = [ 'iframe']
  connect() {
    const player = new Vimeo.Player(this.iframeTarget);

    // Intersection Observer to autoplay video when it enters the viewport
    const observer = new IntersectionObserver((entries) => {
      entries.forEach(entry => {
        if (entry.isIntersecting) {
          player.play();
        } else {
          player.pause();
        }
      });
    });

    // Start observing the iframe
    observer.observe(this.iframeTarget);
  }
}
