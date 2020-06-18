import React, {Fragment} from 'react'
import {BrowserRouter} from 'react-router-dom'
import 'react-bulma-components/dist/react-bulma-components.min.css'

import './stylesheets/app.scss'
import Menu from './components/shared/Menu'

import Routes from './Router'



const App = (props) => {
  return (
    <Fragment>
      <BrowserRouter>
        <Menu />
        <Routes  />
      </BrowserRouter>
    </Fragment>
  )
}

export default App