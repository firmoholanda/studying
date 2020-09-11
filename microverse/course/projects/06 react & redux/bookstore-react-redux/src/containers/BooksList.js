import React from 'react';
import { connect } from 'react-redux';
import PropTypes from 'prop-types';

import Book from '../components/Book';
import CategoryFilter from '../components/CategoryFilter';

import { removeBook, filterCategory } from '../actions';

const BooksList = ({ books, removeBook, filterCategory, filter, }) => {
  const handleRemoveBook = (book) => {
    removeBook(book);
  };

  return (
    <>
      <CategoryFilter filterCategory={filterCategory} />
      <table className="table table-striped table-hover">
        <thead>
          <tr>
            <th scope="col">id</th>
            <th scope="col">title</th>
            <th scope="col">category</th>
            <th scope="col">delete</th>
          </tr>
        </thead>
        <tbody>
          {books.map(book => (
            <Book book={book} key={book.id} deleteBook={handleRemoveBook} />
          ))}
        </tbody>
      </table>
    </>
  );
};

const mapStateToProps = (state) => ({ books: state.books, filter: state.filter });

const mapDispatchToProps = (dispatch) => ({
  removeBook: (book) => dispatch(removeBook(book)),
  filterCategory: (filter) => dispatch(filterCategory(filter)),
});

BooksList.defaultProps = { books: [], };

BooksList.propTypes = {
  books: PropTypes.arrayOf(PropTypes.object),
  removeBook: PropTypes.func.isRequired,
  filterCategory: PropTypes.func.isRequired,
  filter: PropTypes.string.isRequired,
};

export default connect(mapStateToProps, mapDispatchToProps)(BooksList);