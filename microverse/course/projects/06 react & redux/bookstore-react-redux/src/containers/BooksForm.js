import React, { useState } from 'react';
import PropTypes from 'prop-types';
import { connect } from 'react-redux';

import { v4 as uuid } from 'uuid';

import { addBook } from '../actions';


const BooksForm = ({ addBook }) => {
  const categories = ['action', 'biography', 'history', 'horror', 'kids', 'learning', 'sci-fi'];

  const bookFormInitialState = { title: '', category: categories[0] };

  const [state, setState] = useState(bookFormInitialState);

  const handleChange = (event) => {
    const { name, value } = event.target;
    if (name === 'category') {
      setState({
        title: state.title,
        category: value,
      });
    }
    if (name === 'title') {
      setState({
        title: value,
        category: state.category,
      });
    }
  };

  const handleSubmit = (event) => {
    event.preventDefault();
    const { title, category } = state;
    if (title) {
      addBook({ id: uuid(), title, category });
      setState(bookFormInitialState);
    }
  };

  return (
    <form className="book-form" onSubmit={handleSubmit}>
      <input type="text" onChange={handleChange} value={state.title} name="title" placeholder="new book" />
      <select onChange={handleChange} value={state.category} name="category">
        {categories.map((category) => (
          <option key={category} value={category}>{category}</option>
        ))}
      </select>
      <button type="submit">new book</button>
    </form>
  );
};

BooksForm.propTypes = {
  addBook: PropTypes.func.isRequired,
};

const mapDispatchToProps = (dispatch) => ({
  addBook: (book) => dispatch(addBook(book)),
});

export default connect(null, mapDispatchToProps)(BooksForm);
