import { ADD_BOOK, REMOVE_BOOK } from '../actions/actionTypes'

const bookReducer = (state = [], action) => {
  if (action.type === ADD_BOOK) {
    return [...state, action.payload];
  }
  if (action.type === REMOVE_BOOK) {
    return state.filter(book => book.id !== action.payload.id);
  }
  return state;
};

export default bookReducer;
