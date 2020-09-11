import { createStore } from 'redux';
import rootReducer from '../reducers/index';

function configureStore(initialState) {
  return createStore(
    rootReducer,
    initialState,
  );
}

export default configureStore;
