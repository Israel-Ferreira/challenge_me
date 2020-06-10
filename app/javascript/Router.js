 
import React from 'react'
import {Switch, Route} from 'react-router-dom'

import WelcomeScreen from './screens/WelcomeScreen'



const Routes = (props) => (
  <Switch>
    <Route exact path="/" component={WelcomeScreen} />
  </Switch>
)

export default Routes;