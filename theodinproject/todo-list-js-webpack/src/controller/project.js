class Project {
  constructor(title) {
    this.constructor.counter = (this.constructor.counter || 0) + 1;
    this.id = this.constructor.counter;
    this.title = title;
  }
}

export default Project;
