import { Controller } from "@hotwired/stimulus"
import { end } from "@popperjs/core";

// Connects to data-controller="check"
export default class extends Controller {
  static targets = [ "submit" ]

  verify() {
    const inputs = this.element.getElementsByTagName("input")
    const inputNames = Array.from(inputs).map(input => input.name)
    const names = [...new Set(inputNames)]

    const valid = names.every((name) => {
      const criteriaForNotBeginner = name === "waves" || name === "objective"
      const ignoredInputs = this.element["level"].value === "Débutant" && criteriaForNotBeginner
      const valueExist = this.element[name].value !== ""

      return ignoredInputs || valueExist
    })

    this.submitTarget.disabled = !valid
  }
}
