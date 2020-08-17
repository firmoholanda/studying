import React, { useState } from 'react';
import PropTypes from 'prop-types';
import { connect } from 'react-redux';
import { createBook } from '../actions';

const BooksForm = ({ createBook }) => {
  const categories = ['Action', 'Biography', 'History', 'Horror', 'Kids', 'Learning', 'Sci-Fi'];

  const [state, setState] = useState({
    title: '',
    category: categories[0],
  });

  const handleChange = (event) => {
    const { name, value } = event.target;
    setState((prevState) => ({ ...prevState, [name]: value }));
  };

  const handleSubmit = (event) => {
    event.preventDefault();
    const { title, category } = state;
    if (title) {
      createBook({ id: (Math.random() * (10 ** 9)), title, category });
      setState({
        title: '',
        category: categories[0],
      });
    }
  };

  return (
    <div className="form-container">
      <div className="line" />
      <p>ADD NEW BOOK</p>
      <form onSubmit={handleSubmit}>
        <input type="text" onChange={handleChange} value={state.title} name="title" placeholder="Book title" className="input-title" />
        <select onChange={handleChange} value={state.category} name="category" className="select" id="select-form">
          {categories.map((category) => (
            <option key={category} value={category}>{category}</option>
          ))}
        </select>
        <button type="submit" className="button-form">ADD BOOK</button>
      </form>
    </div>
  );
};

BooksForm.propTypes = {
  createBook: PropTypes.func.isRequired,
};

const mapDispatchToProps = (dispatch) => ({
  createBook: (book) => dispatch(createBook(book)),
});

export default connect(null, mapDispatchToProps)(BooksForm);