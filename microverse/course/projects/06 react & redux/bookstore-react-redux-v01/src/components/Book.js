import React from 'react';
import PropTypes from 'prop-types';

const Book = ({ book, deleteBook }) => {
  const handleRemoveBook = () => {
    deleteBook(book);
  };

  return (
    <div className="book-container">
      <p className="category">{book.category}</p>
      <p className="title">{book.title}</p>
      <button className="remove-button" type="button" onClick={handleRemoveBook}>remove</button>
    </div>
  );
};

Book.propTypes = {
  book: PropTypes.shape({
    id: PropTypes.number.isRequired,
    title: PropTypes.string.isRequired,
    category: PropTypes.string.isRequired,
  }).isRequired,
  deleteBook: PropTypes.func.isRequired,
};

export default Book;