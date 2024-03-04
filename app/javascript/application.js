// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

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
