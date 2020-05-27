import menuImg01 from '../img/menu-img01.jpg';
import menuImg02 from '../img/menu-img02.jpg';
import menuImg03 from '../img/menu-img03.jpg';

const menu = document.createElement('div');
menu.className = 'container p-1';

const cardGroup = document.createElement('div');
cardGroup.className = 'card-group mt-4';

function createCard(title, imageNumb, price) {
  const card = document.createElement('div');
  card.className = 'card';

  const img = new Image();
  img.className = 'card-img-top';
  if (imageNumb === 1) { img.src = menuImg01; }
  if (imageNumb === 2) { img.src = menuImg02; }
  if (imageNumb === 3) { img.src = menuImg03; }
  img.setAttribute('height', '330px');

  const cardBody = document.createElement('div');
  cardBody.className = 'card-body';

  const h5 = document.createElement('h5');
  h5.className = 'card-title';
  h5.innerHTML = title;

  const p = document.createElement('p');
  p.className = 'card-title';
  p.innerHTML = 'laborum consectetur nostrud quis culpa culpa id labore qui nostrud culpa in occaecat esse. Sint id excepteur nostrud minim exercitation. Dolor sit officia aliquip nulla cillum velit. Excepteur sunt dolor qui ea pariatur voluptate non eiusmod excepteur amet. Laboris occaecat excepteur fugiat officia culpa ea excepteur ipsum aliqua do ipsum';

  const small = document.createElement('small');
  small.className = 'card-text text-muted';
  small.innerHTML = `USD$  ${price}`;

  card.appendChild(img);
  card.appendChild(cardBody);
  cardBody.appendChild(h5);
  cardBody.appendChild(p);
  cardBody.appendChild(small);

  return card;
}

menu.appendChild(cardGroup);
cardGroup.appendChild(createCard('salad', 1, 10));
cardGroup.appendChild(createCard('steak', 2, 30));
cardGroup.appendChild(createCard('lobster', 3, 50));

export default menu;
