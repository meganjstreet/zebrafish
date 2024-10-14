import { Controller } from "@hotwired/stimulus";
import Masonry from "masonry-layout"; // Ensure Masonry is also pinned
import imagesLoaded from "imagesloaded"; // Import imagesLoaded

export default class extends Controller {
  async connect() {
    const elem = this.element;

    // Use imagesLoaded to ensure all images are loaded before initializing Masonry
    imagesLoaded(elem, async () => {
      new Masonry(elem, {
        itemSelector: '.card-home-project',
        percentPosition: true,
        masonry: {
          columnWidth: '.card-home-sizer'
        },
        gutter: 20
      });

      // Add a delay of 2 seconds before showing the images
      await sleep(1000);

      // Show the images by removing the 'hidden' class
      const items = elem.querySelectorAll('.card-home-project.hidden');
      items.forEach((item) => {
        item.classList.remove('hidden');
      });

      // Hide the loading spinner
      const loading = elem.querySelector('.loading');
      if (loading) {
        loading.classList.add("hidden");
      }
    });
  }
}

function sleep(ms) {
  return new Promise(resolve => setTimeout(resolve, ms));
}
