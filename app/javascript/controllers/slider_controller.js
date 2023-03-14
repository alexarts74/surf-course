import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="slider"
export default class extends Controller {
  static targets = ["value"]
  connect() {
    console.log("slideeee");
  }

  update(event) {
    this.valueTarget.innerHTML = event.currentTarget.value
  }
}
