import React from 'react';
import ReactDOM from 'react-dom';
import createStore from '../src/store/store';
import Root from '../src/components/root';

document.addEventListener('DOMContentLoaded', () => {
  const root = document.getElementById('root');
  let preloadedState = undefined;
  if (window.currentUser) {
    preloadedState = {
      session: {
        currentUser: window.currentUser
      }
    };
  }
  // ! uncomment this eventually
  // const store = createStore(preloadedState);
  const store = createStore();

  ReactDOM.render(<Root store={store} />, root);
})