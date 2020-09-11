// react
import React from 'react';
import ReactDOM from 'react-dom';
import { Provider } from 'react-redux';

// components, store configuration and initial state info
import App from './components/App';
import configureStore from './helpers/configureStore';
import initialState from './helpers/initialState';

// style
import 'bootstrap/dist/css/bootstrap.min.css';
import './assets/index.css';

// initialize redux store
const store = configureStore(initialState);

// debug. view current store state
console.log(store.getState()) 

ReactDOM.render(
  <Provider store={store}>
    <App />
  </Provider>,
  document.getElementById('root'),
);
