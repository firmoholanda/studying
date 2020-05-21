// import stylesheets
import './css/style.css';

// import modules
import navbar from './navbar';
import footer from './footer';
import home from './tab/home';
import menu from './tab/menu';
import contact from './tab/contact';
import about from './tab/about';


const main = document.querySelector('#content');

main.insertAdjacentHTML('beforeEnd', navbar.outerHTML);
main.insertAdjacentHTML('beforeEnd', '<div class="activeInfo"></div>');
main.insertAdjacentHTML('beforeEnd', footer.outerHTML);


const activeInfo = document.querySelector('.activeInfo');
activeInfo.innerHTML = home.outerHTML;


const nav = document.querySelector('.navbar');

nav.addEventListener('click', e => {
  if (e.target && e.target.classList.contains('nav-link')) {
    const selectedMenu = e.target.outerText;

    switch (selectedMenu) {
      case 'menu':
        activeInfo.innerHTML = menu.outerHTML;
        break;
      case 'contact':
        activeInfo.innerHTML = contact.outerHTML;
        break;
      case 'about':
        activeInfo.innerHTML = about.outerHTML;
        break;
      default:
        activeInfo.innerHTML = home.outerHTML;
    }
  }
});
