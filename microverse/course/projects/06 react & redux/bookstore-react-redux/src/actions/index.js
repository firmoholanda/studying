import { ADD_BOOK, REMOVE_BOOK, CHANGE_FILTER } from './actionTypes'


// action creators

export function addBook(book) {
  return { type: ADD_BOOK, payload: book }
}

export function removeBook(book) {
  return { type: REMOVE_BOOK, payload: book }
}

export function filterCategory(filter) {
  return { type: CHANGE_FILTER, payload: filter }
}