const home =

`
<div class='jumbotron m-3 p-3'>
  <h1 class='display-4'>todo-list-js-webpack</h1>
  <p class='lead'>this is a simple todo-list-js-webpack app</p>
</div>

<div class="container">
  <div class="row">
    <div class="col-sm">
      <h3>project</h3>
      <table class="table table-striped table-hover">
        <thead>
          <tr>
            <th scope="col">id</th>
            <th scope="col">name</th>
          </tr>
        </thead>
        <tbody id="project-table">
          <!-- js fill -->
        </tbody>
      </table>

    </div>
    <div class="col-sm">
      <h3>todo</h3>
      <table class="table table-striped table-hover">
        <thead>
          <tr>
            <th scope="col">id</th>
            <th scope="col">title</th>
            <th scope="col">dueDate</th>
            <th scope="col">priority</th>
            <th scope="col">description</th>
          </tr>
        </thead>
        <tbody id="todo-table">
          <!-- js fill -->
        </tbody>
      </table>
    </div>
  </div>
</div>

`

export default home;
