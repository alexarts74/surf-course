import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="slider"
export default class extends Controller {
  static targets = ["containerOutput", "output", "input"]
  connect() {

    console.log('je suis dans le connect')
    console.log(this.containerOutputTarget)
    console.log(this.outputTarget)
    console.log(this.inputTarget)
    this.update()
  }
// couplé uniquement avec static targets value = uniquement la valeur affiché
//   update(event) {
//     this.valueTarget.innerHTML = event.currentTarget.value
//   }
// }

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
