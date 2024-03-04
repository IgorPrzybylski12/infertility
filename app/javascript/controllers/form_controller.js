import { Controller } from '@hotwired/stimulus';

export default class extends Controller {
  replaceForm(event) {
    const host = window.location.origin;

    fetch(`${host}/poly_variants/add_new_search_option?category=${event.target.value}`, {
      method: 'post',
      headers: {
        'X-CSRF-Token': document.querySelector("[name='csrf-token']").content,
        Accept: 'text/vnd.turbo-stream.html',
      },
    })
      .then((response) => response.text())
      .then((text) => window.Turbo.renderStreamMessage(text));
  }
}
