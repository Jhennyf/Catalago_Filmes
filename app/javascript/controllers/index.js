// Import and register all your controllers from the importmap via controllers/**/*_controller
import { application } from "controllers/application"
import { eagerLoadControllersFrom } from "@hotwired/stimulus-loading"
import Dropdown from "@stimulus-components/dropdown"
import Dialog from "@stimulus-components/dialog"

application.register("dialog", Dialog)
application.register("dropdown", Dropdown)

eagerLoadControllersFrom("controllers", application)
