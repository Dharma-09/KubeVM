import React from 'react';
import ReactDOM from 'react-dom/client';
import './index.css';
import App from './App';
import reportWebVitals from './reportWebVitals';
import LoginPage from './components/LoginPage'; // Ensure that the file LoginPage.js exists in the same directory
import Dashboard from './pages/DashBoard';

const root = ReactDOM.createRoot(document.getElementById('root'));
root.render(
  <React.StrictMode>
    <LoginPage />
    <Dashboard/>
  </React.StrictMode>
);

reportWebVitals();
