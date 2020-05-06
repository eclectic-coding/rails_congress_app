/* Toggle between adding and removing the "responsive" class
 to topnav when the user clicks on the icon */
function myFunction() {
    let mainNav = document.getElementById('js-menu');
    let navBarToggle = document.getElementById('js-navbar-toggle');

    navBarToggle.addEventListener('click', function () {
        mainNav.classList.toggle('active');
    });
}