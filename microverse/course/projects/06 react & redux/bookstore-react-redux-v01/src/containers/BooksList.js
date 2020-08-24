import React from 'react';
import { connect } from 'react-redux';
import PropTypes from 'prop-types';
import { removeBook, filterCategory } from '../actions';
import Book from '../components/Book';
import CategoryFilter from '../components/CategoryFilter';

const BooksList = ({
  books, removeBook, filterCategory, filter,
}) => {
  const handleRemoveBook = (book) => {
    removeBook(book);
  };

  return (
    <div>
      <CategoryFilter filterCategory={filterCategory} />
      {books.filter(book => (filter === 'All' || book.category === filter)).map(book => (
        <Book book={book} key={book.id} deleteBook={handleRemoveBook} />))}
    </div>
  );
};

const mapStateToProps = (state) => ({ books: state.books, filter: state.filter });

const mapDispatchToProps = (dispatch) => ({
  removeBook: (book) => dispatch(removeBook(book)),
  filterCategory: (filter) => dispatch(filterCategory(filter)),
});

BooksList.defaultProps = {
  books: [],
};

BooksList.propTypes = {
  books: PropTypes.arrayOf(PropTypes.object),
  removeBook: PropTypes.func.isRequired,
  filterCategory: PropTypes.func.isRequired,
  filter: PropTypes.string.isRequired,
};

export default connect(mapStateToProps, mapDispatchToProps)(BooksList);