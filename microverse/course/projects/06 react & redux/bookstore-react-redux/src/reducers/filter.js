import { CHANGE_FILTER } from '../actions/actionTypes'

const filterReducer = (state = 'all', action) => {
  if (action.type === CHANGE_FILTER) {
    return action.payload;
  }
  return state;
};

export default filterReducer;
