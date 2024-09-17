import { Controller } from "@hotwired/stimulus";
import Masonry from "masonry-layout"; // Ensure Masonry is also pinned
import imagesLoaded from "imagesloaded"; // Import imagesLoaded

export default class extends Controller {
  connect() {
    const elem = this.element;

    // Use imagesLoaded to ensure all images are loaded before initializing Masonry
    imagesLoaded(elem, () => {
      new Masonry(elem, {
        itemSelector: '.card-home-project',
        percentPosition: true,
        masonry: {
          columnWidth: '.card-home-sizer'
        },
        gutter: 10
      });
    });
  }
}
