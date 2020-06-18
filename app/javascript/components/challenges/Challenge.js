import React, {Fragment} from 'react'
import {Heading} from 'react-bulma-components'
import {Link} from 'react-router-dom'

const Challenge =  (props) => (
  <Fragment>
    <Link to={`/challenges/${props.id}`}>
      <Heading></Heading>
    </Link>
  </Fragment>
)

export default Challenge;