import faker from 'faker';
import { v4 as uuid } from 'uuid';

const booksArray = [
  {
    id: uuid(),
    title: faker.lorem.words(),
    category: 'action',
  },
  {
    id: uuid(),
    title: faker.lorem.words(),
    category: 'biography',
  },
  {
    id: uuid(),
    title: faker.lorem.words(),
    category: 'history',
  },
];

const initialState = {
  books: booksArray,
};

export default initialState;
