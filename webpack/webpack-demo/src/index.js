import _ from 'lodash';
import './style.css';
import Icon from './icon.png';

function component() {
  const element = document.createElement('div');
  
  element.innerHTML = _.join(['hello firmo', 'webpack testing'], ' ');
  element.classList.add('hello');

  // add the image to our existing div.
  const myIcon = new Image();
  myIcon.src = Icon;
  //element.appendChild(myIcon);

  return element;
}

document.body.appendChild(component());
