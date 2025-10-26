import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="carousel"
export default class extends Controller {
  static targets = ["track"]
  currentIndex = 0
  interval = null

  connect() {
    this.slideCount = this.trackTarget.children.length
    this.slideWidth = this.trackTarget.children[0].offsetWidth
    this.goToSlide(0)
    this.startAutoplay()
  }

  disconnect() {
    this.stopAutoplay()
  }

  prev() {
    this.stopAutoplay()
    this.currentIndex = (this.currentIndex - 1 + this.slideCount) % this.slideCount
    this.goToSlide(this.currentIndex)
    this.startAutoplay()
  }

  next() {
    this.stopAutoplay()
    this.currentIndex = (this.currentIndex + 1) % this.slideCount
    this.goToSlide(this.currentIndex)
    this.startAutoplay()
  }

  goToSlide(index) {
    const offset = -index * this.slideWidth
    this.trackTarget.style.transform = `translateX(${offset}px)`
  }

  startAutoplay() {
    this.interval = setInterval(() => {
      this.next()
    }, 4000) 
  }

  stopAutoplay() {
    if (this.interval) {
      clearInterval(this.interval)
      this.interval = null
    }
  }
}
