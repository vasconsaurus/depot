import React from 'react'
import ReactDOM from 'react-dom'
import {createRoot} from 'react-dom/client';
import PayTypeSelector from 'PayTypeSelector'

// document.addEventListener('turbolinks:load', function() {
//   var element = document.getElementById('pay-type-component');
//   ReactDOM.render(<PayTypeSelector />, element);
// });

document.addEventListener('turbolinks:load', function() {
  const rootElement = document.getElementById('pay-type-component');

  const root = createRoot(rootElement)
  root.render(<PayTypeSelector />)
});
