import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  loadPartial(event) {
    event.preventDefault(); // Prevent default link behavior

    // Add bold class
    event.currentTarget.classList.add("text-bold");

    // get partial specific to header
    const url = event.currentTarget.dataset.url;
    const partialFrame = document.getElementById('partial-frame');

    if (!partialFrame) {
      console.error("Element with ID 'partial-frame' not found.");
      return;
    }

    fetch(url, {
      method: 'GET',
      headers: {
        'Accept': 'text/html'
      }
    })
    .then(response => response.text())
    .then(html => {
      partialFrame.innerHTML = html;
    })
    .catch(error => {
      console.error("Error loading partial:", error);
    });
  }

  unbold(event) {
    // Remove bold class
    event.currentTarget.classList.remove("text-bold");
  }
}

