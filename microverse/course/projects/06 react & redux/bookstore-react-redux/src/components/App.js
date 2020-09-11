import React from 'react';

import Jumbotron from './Jumbotron';
import BooksList from '../containers/BooksList';
import BooksForm from '../containers/BooksForm';
import Footer from './Footer';


const App = () => (
  <div className="app">
    <Jumbotron />
    <BooksList />
    <BooksForm />
    <Footer />
  </div>
);

export default App;
