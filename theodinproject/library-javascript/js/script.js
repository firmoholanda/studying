let index = 0;
let myLibrary = [];

// book constructor
function Book(title, author, pages, status = false) {
  this.title = title;
  this.author = author;
  this.pages = pages;
  this.status = status;
}

// add book to lib
function addBookToLibrary() {
  let addTitle = document.getElementById("new-title").value;
  let addAuthor = document.getElementById("new-author").value;
  let addPages = document.getElementById("new-pages").value;
  let radios = document.getElementsByName("new-read");

  radios.forEach(function (radio) {
    if (radio.checked) addStatus = radio.value;
  });

  let newBook = new Book(addTitle, addAuthor, addPages, addStatus);
  myLibrary.push(newBook);
  render(myLibrary);
}

function render(books) {

  let table = document.getElementById("lib-table");
  while (index < books.length) {
    let row = table.insertRow();

    let indexColumn = document.createElement("th");
    indexColumn.setAttribute("scope", "row");
    indexColumn.innerHTML = index + 1;
    row.appendChild(indexColumn);

    let titleColumn = row.insertCell(1);
    titleColumn.innerHTML = books[index].title;

    let authorColumn = row.insertCell(2);
    authorColumn.innerHTML = books[index].author;

    let pagesColumn = row.insertCell(3);
    pagesColumn.innerHTML = books[index].pages;

    // status
    let readColumn = row.insertCell(4);
    if (books[index].status == "false") {
      let statusBtn = document.createElement("button");
      readColumn.appendChild(statusBtn);
      statusBtn.setAttribute("class", "btn btn-outline-info");
      statusBtn.setAttribute("id", `${index}`);
      statusBtn.innerHTML = "reading";

      statusBtn.addEventListener("click", function () {
        books[this.id].status = "true";
        let tableRows = table.getElementsByTagName('tr');
        while (index > 0) {
          table.removeChild(tableRows[index - 1]);
          index--;
        };
        render(myLibrary);
      });
    } else {
      let statusBtn = document.createElement("button");
      readColumn.appendChild(statusBtn);
      statusBtn.setAttribute("class", "btn btn-outline-success");
      statusBtn.setAttribute("id", `${index}`);
      statusBtn.innerHTML = "finished";

      statusBtn.addEventListener("click", function () {
        books[this.id].status = "false";
        let tableRows = table.getElementsByTagName('tr');
        while (index > 0) {
          table.removeChild(tableRows[index - 1]);
          index--;
        };
        render(myLibrary);
      });
    }

    // remove btn
    let removeColumn = row.insertCell(5);
    let removeBtn = document.createElement("button");
    removeColumn.appendChild(removeBtn);
    removeBtn.setAttribute("class", "btn btn-outline-danger");
    removeBtn.setAttribute("id", `${index}`);
    removeBtn.innerHTML = "remove";
    row.appendChild(removeColumn);

    removeBtn.addEventListener("click", function () {
      myLibrary.splice(this.id, 1);
      let tableRows = table.getElementsByTagName('tr');
      while (index > 0) {
        table.removeChild(tableRows[index - 1]);
        index--;
      };
      render(myLibrary);
    });

    index++;
  }
}

// populateBooks
function populateBooks() {
  myLibrary.push(new Book("book01", "author01", 11, "true"));
  myLibrary.push(new Book("book02", "author02", 22, "false"));
  myLibrary.push(new Book("book03", "author03", 33, "false"));
}
//populateBooks();

//render(myLibrary);


// Render books in DOM layer
if (window.localStorage.length == 0) {
  populateBooks();
  window.localStorage.setItem('myLib', JSON.stringify(myLibrary));
} else {
  myLibrary = JSON.parse(window.localStorage.getItem('myLib'));
}

render(JSON.parse(window.localStorage.getItem('myLib')));
