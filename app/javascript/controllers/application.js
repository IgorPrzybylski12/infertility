import { Application as StimulusApplication } from "@hotwired/stimulus"
import Turbo from "@hotwired/turbo-rails"
import "controllers"

const application = StimulusApplication.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus = application

export { application, Turbo }

window.callTurboAction = (event) => {
    console.log('Hello, Stimulus!', event);
  
    const host = window.location.origin;
  
    fetch(`${host}/enrollments/add_new_search_option`, {
      method: 'post',
      headers: {
        'X-CSRF-Token': document.querySelector("[name='csrf-token']").content,
        Accept: 'text/vnd.turbo-stream.html',
      },
    })
      .then((response) => response.text())
      .then((text) => window.Turbo.renderStreamMessage(text));
  };

import { Application } from "../application";
