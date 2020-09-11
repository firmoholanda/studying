import React from 'react';
import PropTypes from 'prop-types';

const CategoryFilter = ({ filterCategory }) => {

  const handleFilterChange = (event) => {
    const { value } = event.target;
    filterCategory(value);
  };

  const categories = ['action', 'biography', 'history', 'horror', 'kids', 'learning', 'sci-fi'];

  return (
    <select name="category" onChange={handleFilterChange}>
      <option value="all" className="option">all</option>
      {categories.map((category) => (
        <option key={category} value={category}>{category}</option>
      ))}
    </select>
  );
};

CategoryFilter.propTypes = {
  filterCategory: PropTypes.func.isRequired,
};

export default CategoryFilter;