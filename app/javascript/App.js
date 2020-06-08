import React, {Fragment} from 'react'
import {BrowserRouter} from 'react-router-dom'
import 'react-bulma-components/dist/react-bulma-components.min.css'

import './stylesheets/app.scss'
import Menu from './components/shared/Menu'

const App = (props) => {
  return (
    <Fragment>
      <BrowserRouter>
        <Menu />
      </BrowserRouter>
    </Fragment>
  )
}

export default App