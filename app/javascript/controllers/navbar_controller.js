import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="navbar"
export default class extends Controller {
  static targets = [ "menu", "close" ]

  showMenu(event) {
    this.menuTarget.classList.add("d-none");

  }

  hideMenu(event) {
    this.menuTarget.classList.remove("d-none");

  }
}
