// your task is to implement a React component that renders a text imput field with auto-completion.

import React from 'react';
import classnames from 'classnames';
// you should import `lodash` as a whole module
import lodash from 'lodash';
import axios from 'axios';

const ITEMS_API_URL = 'https://example.com/api/items';
const DEBOUNCE_DELAY = 500;

// the exported component can be either a function or a class

export default function Autocomplete({onSelectItem}) {
  const [items, setItems] = React.useState([]);
  const [isLoading, setIsLoading] = React.useState(false);
  const [imputValue, setInputValue] = React.useState("");
  
  const fetchItems = async () => {
      setIsLoading(true);

      const response = await axios.get(ITEMS_API_URL);
      setItems(response.data);

      setIsLoading(false);
  };


  const handleInputChange = (event) => {
    setInputValue(event.target.value);
  };

  const debounceFetchItems = lodash.debounce(() => {
    fetchItems();
  },  DEBOUNCE_DELAY);

  React.useEffect(() => {
    debounceFetchItems();
  },  [imputValue]);
  
  const imputClassName = "input" + isLoading && " is-loading";

  return (
    <div className="wrapper">
      <div className="control">
        <input type="text" className={imputClassName} onChange={handleInputChange} />
      </div>
      {items.length > 0 && (
        <div className="list is-hoverable" >
          {items.map((item) => (
            <div className="list-item" key={item.id} onClick={() => onSelectItem(item)}>
              {item.name}
            </div>
          ))}
        </div>
      )}
    </div>
  );
}

