import { Provider } from "react-redux";
import { HashRouter } from 'react-router-dom';
import React from "react";
import App from './app'



const Root = ({store}) => {
    return (
        <Provider store={store}>
            <HashRouter>
                <App>

                </App>
            </HashRouter>
            React is working!
        </Provider>
        // <div>
        //     React is working!
        // </div>
    )
}

export default Root;