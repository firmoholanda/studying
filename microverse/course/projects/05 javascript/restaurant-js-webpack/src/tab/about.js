const about = document.createElement('div');
about.className = 'container mt-3 p-1';

const row = document.createElement('div');
row.className = 'row';

const col01 = document.createElement('div');
col01.className = 'col';

const map = document.createElement('iframe');
map.className = 'shadow-sm p-3 mb-5';
map.setAttribute('src', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d38310.007492210956!2d-46.656696309176944!3d-23.559343021701316!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94ce5a2872564849%3A0x20bf8f220e1a835f!2sCome%20On%20Burger!5e0!3m2!1sen!2sbr!4v1589917478214!5m2!1sen!2sbr');
map.setAttribute('width', '100%');
map.setAttribute('height', '450px');
map.setAttribute('frameborder', '0');

const col02 = document.createElement('div');
col02.className = 'col';

const h3 = document.createElement('h3');
h3.className = 'text-center mb-5';
h3.innerHTML = 'restaurant history';

const p = document.createElement('p');
p.className = 'text-justify lead';
p.innerHTML = 'amet magna amet incididunt cupidatat labore ad id aute nisi ea reprehenderit sunt reprehenderit. Labore magna occaecat reprehenderit velit ex deserunt deserunt esse est. Nisi ad eiusmod pariatur consectetur ullamco consequat enim ex sunt aliquip cillum excepteur incididunt. Voluptate in velit sit eu cillum do voluptate do nisi duis. Occaecat dolore enim sit sunt in officia sunt sunt qui qui nulla irure minim. Esse quis laborum ut elit irure. Ea dolor elit tempor duis laborum proident consectetur pariatur nulla. Do aute pariatur qui velit id magna ut commodo officia cillum. Id sunt nisi reprehenderit tempor mollit dolor do officia.';

about.appendChild(row);

row.appendChild(col01);
col01.appendChild(map);

row.appendChild(col02);
col02.appendChild(h3);
col02.appendChild(p);

export default about;
