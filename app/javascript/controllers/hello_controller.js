import { Controller } from "@hotwired/stimulus"
import { end } from "@popperjs/core"

export default class extends Controller {
  static targets = [ "level", "deb" ]
  connect() {
  }

  update() {
    if (this.debTarget.checked)
      this.levelTarget.classList.add("d-none")
    else
      this.levelTarget.classList.remove("d-none")
    end
  };
}
