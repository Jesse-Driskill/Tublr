import { combineReducers } from 'redux';


import sessionReducer from './session_reducer';
import entitiesReducer from './entities_reducer';
import errorsReducer from './errors_reducer';
// import sessionErrors from './session_errors_reducer';
// import errors_reducer from './errors_reducer';


const rootReducer = combineReducers({
    errors: errorsReducer,
    
    entities: entitiesReducer,
    session: sessionReducer
    
});

export default rootReducer;
