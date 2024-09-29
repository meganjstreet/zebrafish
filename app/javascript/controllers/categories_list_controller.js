import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="categories-list"
export default class extends Controller {
  static targets = ["category"]

  highlight(event) {
    this.categoryTargets.forEach((category) => {
      category.classList.remove("link-bold")
    });
    event.currentTarget.classList.add("link-bold");
  }
}
