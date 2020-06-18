 
import React from 'react'
import {Switch, Route} from 'react-router-dom'

import WelcomeScreen from './screens/WelcomeScreen'
import DiscoveryScreen from './screens/DiscoveryScreen'



const Routes = (props) => (
  <Switch>
    <Route exact path="/" component={WelcomeScreen} />
    <Route exact path="/discovery" component={DiscoveryScreen} />
  </Switch>
)

export default Routes;