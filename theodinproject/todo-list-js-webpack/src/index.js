// import stylesheets
import './view/css/style.css';

// import view modules
import home from './view/home';
import footer from './view/footer';

// import controller modules
import Project from './controller/project';
import Todo from './controller/todo';

let projectList = [];
let todoList = [];

const main = document.querySelector('#content');

main.insertAdjacentHTML('beforeEnd', '<div class="activeInfo"></div>');
main.insertAdjacentHTML('beforeEnd', footer);

const activeInfo = document.querySelector('.activeInfo');
activeInfo.innerHTML = home;

// add btns action
const btnAddProject = document.getElementById('addProject');
btnAddProject.onclick = () => { addProject(); };

const btnAddTodo = document.getElementById('addTodo');
btnAddTodo.onclick = () => { addTodo(); };

//const picker = datepicker('#new-todo-dueDate')


function addProject() {
  const project = new Project(document.getElementById('new-project-title').value);
  projectList.push(project);

  render(projectList);
}

function addTodo() {
  const todoTitle = document.getElementById('new-todo-title').value;
  const todoDueDate = document.getElementById('new-todo-dueDate').value;
  const todoPriority = document.getElementById('new-todo-priority').value;
  const dotoDescription = document.getElementById('new-todo-description').value;

  const todo = new Todo(todoTitle, todoDueDate, todoPriority, dotoDescription);
  todotList.push(todo);

  render(projectList);
}

function render(projectList, todoList) {
  const projectTable = document.getElementById('project-table');
  projectTable.innerHTML = '';

  const todoTable = document.getElementById('todo-table');
  todoTable.innerHTML = '';

  projectList.forEach((project) => {
    const tableRow = projectTable.insertRow();
    const indexCol = document.createElement('th');

    indexCol.innerHTML = project.id;
    tableRow.appendChild(indexCol);

    const titleCol = tableRow.insertCell(1);
    titleCol.innerHTML = project.title;
  });

  todoList.forEach((todo) => {
    const tableRow = todoTable.insertRow();
    const indexCol = document.createElement('th');

    indexCol.innerHTML = todo.id;
    tableRow.appendChild(indexCol);

    const titleCol = tableRow.insertCell(1);
    titleCol.innerHTML = todo.title;

    const dueDateCol = tableRow.insertCell(2);
    dueDateCol.innerHTML = todo.dueDate;

    const priorityCol = tableRow.insertCell(3);
    priorityCol.innerHTML = todo.priority;

    const descriptionCol = tableRow.insertCell(4);
    descriptionCol.innerHTML = todo.description;

  });
}

function populateProjects() {
  projectList.push(new Project("project-01"));
  projectList.push(new Project("project-02"));
  projectList.push(new Project("project-03"));
}

function populateTodos() {
  todoList.push(new Todo("todo-01", "01/01/2021", "low", "this is my todo 01"));
  todoList.push(new Todo("todo-02", "01/02/2022", "normal", "this is my todo 02"));
  todoList.push(new Todo("todo-03", "01/03/2023", "important", "this is my todo 03"));
  todoList.push(new Todo("todo-04", "01/02/2022", "normal", "this is my todo 02"));
  todoList.push(new Todo("todo-04", "01/03/2023", "important", "this is my todo 03"));
}

console.log(todoList);

populateProjects();
populateTodos();
render(projectList, todoList);