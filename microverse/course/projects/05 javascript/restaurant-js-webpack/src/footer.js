const hr = document.createElement('hr');
hr.className = 'my-4';

const footer = document.createElement('footer');
footer.className = 'footer';

const small = document.createElement('small');
small.innerHTML = 'restaurant-js-webpack created by: ';

const a = document.createElement('a');
a.innerHTML = 'firmo holanda';
a.setAttribute('href', 'https://github.com/firmoholanda');

footer.appendChild(hr);
footer.appendChild(small);
small.appendChild(a);

export default footer;
