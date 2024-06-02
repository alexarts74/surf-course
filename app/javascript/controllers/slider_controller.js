import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="slider"
export default class extends Controller {
  static targets = ["containerOutput", "output", "input"]
  connect() {
    this.update()
  }

 update () {
    const value = parseInt(this.inputTarget.value, 10)
    this.outputTarget.innerText = value
    const minValue = parseInt(this.inputTarget.min, 10)
    const maxValue = parseInt(this.inputTarget.max, 10)
    const maxMargin = this.containerOutputTarget.offsetWidth - this.outputTarget.offsetWidth
    const percent = (value - minValue) * 100 / (maxValue - minValue)
    const margin = maxMargin * percent / 100

    this.outputTarget.style.marginLeft = `${margin}px`
  }
}
