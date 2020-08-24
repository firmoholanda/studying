import React from 'react';
import PropTypes from 'prop-types';

const CategoryFilter = ({ filterCategory }) => {
  const handleFilterChange = (event) => {
    const { value } = event.target;
    filterCategory(value);
  };

  const categories = ['action', 'biography', 'history', 'horror', 'kids', 'learning', 'sci-fi'];

  return (
    <div className="filter-container">
      <p>Filter by category: </p>
      <select className="select" name="category" onChange={handleFilterChange}>
        <option value="All" className="option">all</option>
        {categories.map((category) => (
          <option key={category} value={category} className="option">{category}</option>
        ))}
      </select>
    </div>
  );
};

CategoryFilter.propTypes = {
  filterCategory: PropTypes.func.isRequired,
};

export default CategoryFilter;