const contact = document.createElement('div');
contact.className = 'container p-1';

const form = document.createElement('form');

const fg01 = document.createElement('div');
fg01.className = 'form-group';

const label01 = document.createElement('label');
label01.innerHTML = 'name';

const input01 = document.createElement('input');
input01.setAttribute('type', 'text');
input01.setAttribute('class', 'form-control');
input01.setAttribute('placeholder', 'please enter your name');

const fg02 = document.createElement('div');
fg02.className = 'form-group py-3';

const label02 = document.createElement('label');
label02.innerHTML = 'email';

const input02 = document.createElement('input');
input02.setAttribute('type', 'email');
input02.setAttribute('class', 'form-control');
input02.setAttribute('placeholder', 'name@example.com');

const fg03 = document.createElement('div');
fg03.className = 'form-group py-3';

const label03 = document.createElement('label');
label03.innerHTML = 'message';

const textarea = document.createElement('textarea');
textarea.setAttribute('type', 'email');
textarea.setAttribute('class', 'form-control');
textarea.setAttribute('placeholder', 'please enter your message');

const btnSubmit = document.createElement('button');
btnSubmit.setAttribute('class', 'btn btn-primary my-3');
btnSubmit.setAttribute('type', 'submit');
btnSubmit.innerHTML = 'submit';

contact.appendChild(form);

form.appendChild(fg01);
fg01.appendChild(label01);
fg01.appendChild(input01);

form.appendChild(fg02);
fg02.appendChild(label02);
fg02.appendChild(input02);

form.appendChild(fg03);
fg03.appendChild(label03);
fg03.appendChild(textarea);

form.appendChild(btnSubmit);

export default contact;
