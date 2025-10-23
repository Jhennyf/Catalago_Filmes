import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="carousel"
export default class extends Controller {
  static targets = ["track"]

  connect() {
    this.index = 0
    this.slideCount = this.trackTarget.children.length
    this.start()
  }

  start() {
    this.timer = setInterval(() => this.next(), 6000)
  }

  next() {
    this.index = (this.index + 1) % this.slideCount
    this.update()
  }

  prev() {
    this.index = (this.index - 1 + this.slideCount) % this.slideCount
    this.update()
  }

  update() {
    this.trackTarget.style.transform = `translateX(-${this.index * 100}%)`
  }

  disconnect() {
    clearInterval(this.timer)
  }
}
