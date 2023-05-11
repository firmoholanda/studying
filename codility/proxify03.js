import React from 'react';

const menuConfig = [
    {
        title: 'Home',
    },
    {
        title: 'Services',
        subItems: ['Cooking', 'Cleaning'],
    },
    {
        title: 'Contact',
        subItems: ['Phone', 'Mail'],
    },
];

function Solution({ menuConfig }) {

  return (
    <div className="menu-wrapper">
      <ul>
        {menuConfig.map((item, index) => (
          <li key={index}>
            {item.title}
          </li>
          ))}
          {item.subItems && (
            <ul>
              {item.subItems.map((subItem, index) => (
                <li key={index}>
                  {subItem}
                </li>
                ))}
            </ul>
          )}
        </ul>
    </div>
  );
}

export default Solution;