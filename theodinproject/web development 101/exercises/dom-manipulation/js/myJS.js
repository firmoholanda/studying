const container = document.querySelector('#container');

const content = document.createElement('div');
content.classList.add('content');
content.textContent = 'this is the glorious text-content!';

container.appendChild(content);
