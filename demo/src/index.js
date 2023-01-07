import React from 'react';
import ReactDOM from 'react-dom/client';
import './index.css';
import App from './App';
import Compone from './components/comp_one';
import reportWebVitals from './reportWebVitals';

const compone = ReactDOM.createRoot(document.getElementById('root'));
compone.render(<Compone />);

// If you want to start measuring performance in your app, pass a function
// to log results (for example: reportWebVitals(console.log))
// or send to an analytics endpoint. Learn more: https://bit.ly/CRA-vitals
reportWebVitals();
