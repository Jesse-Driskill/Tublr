import React from 'react';
import ReactDOM from 'react-dom';
import Root from './components/root';

import configureStore from './store/store';


document.addEventListener("DOMContentLoaded", () => {
    // let store = configureStore();
    // ReactDOM.render( <Root store={store}>
    //     <div>React is working!</div>

    // </Root>, document.getElementById("root"));
    let store;
    if (window.currentUser) {
      const preloadedState = {
        session: { id: window.currentUser.id },
        entities: {
          users: { [window.currentUser.id]: window.currentUser }
        }
      };
      store = configureStore(preloadedState);
      delete window.currentUser;
    } else {
      store = configureStore();
    }
    const root = document.getElementById('root');
    ReactDOM.render(<Root store={store} />, root);
})