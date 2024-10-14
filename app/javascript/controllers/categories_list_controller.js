import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="categories-list"
export default class extends Controller {
  static targets = ["category"]

  highlight(event) {
    this.categoryTargets.forEach((category) => {
      console.log(category)
      category.parentNode.classList.remove("text-white-underline")
    });
    event.currentTarget.parentNode.classList.add("text-white-underline");
  }
}
