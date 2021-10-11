document.addEventListener('DOMContentLoaded', () => {
  (document.querySelectorAll('.notification .delete') || []).forEach(($delete) => {
    const $notification = $delete.parentNode;

    $delete.addEventListener('click', () => {
      $notification.parentNode.removeChild($notification);
    });
  });
});


document.addEventListener('DOMContentLoaded', () => {
  const $navbarBurgers = Array.prototype.slice.call(document.querySelectorAll('.navbar-burger'), 0);
  if ($navbarBurgers.length > 0) {

    $navbarBurgers.forEach( el => {
      el.addEventListener('click', () => {

        const target = el.dataset.target;
        const $target = document.getElementById(target);

        el.classList.toggle('is-active');
        $target.classList.toggle('is-active');

      });
    });
  }

});



document.addEventListener('DOMContentLoaded', () => {
  const $eye_btn = Array.prototype.slice.call(document.querySelectorAll('.eye-btn'), 0);
  if ($eye_btn.length > 0) {
    $eye_btn.forEach( el => {
      el.addEventListener('click', () => {

        const target = el.nextElementSibling;

        target.classList.toggle('is-active');

      });
    });
  }
});

document.addEventListener('DOMContentLoaded', () => {
  const $modal_close = Array.prototype.slice.call(document.querySelectorAll('.modal-close'), 0);
  if ($modal_close.length > 0) {
    $modal_close.forEach( el => {
      el.addEventListener('click', () => {

        const target = el.parentNode;

        target.classList.remove('is-active');

      });
    });
  }
});