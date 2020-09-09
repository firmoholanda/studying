const container = document.querySelector('#container');

    const div1 = document.createElement('div');
    div1.classList.add('content1');
        const p = document.createElement('p');
        p.style.color = 'red'; 
        p.textContent = "hey i’m red!";
        div1.appendChild(p);
    container.appendChild(div1);

    const div2 = document.createElement('div');
    div2.classList.add('content2');
        const h3 = document.createElement('h3');
        h3.style.color = 'blue'; 
        h3.textContent = "i’m a blue h3!";
        div2.appendChild(h3);
    container.appendChild(div2);

    const div3 = document.createElement('div');
    div3.classList.add('content3');
        const h1 = document.createElement('h1');
        h1.textContent = "i’m in a div";
        div3.appendChild(h1);
        const p3 = document.createElement('p');
        p3.textContent = "me too";
        div3.appendChild(p3);
    container.appendChild(div3);





