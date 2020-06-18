import React from 'react'
import {Columns} from 'react-bulma-components'
import Challenge from './Challenge'


const ChallengeList =  (props) => {
  const challenges =  props.list.map((chl, key) => {
    return (
      <Columns.Column key={key} desktop={{size: 4}} mobile={{size: 6}}>
        <Challenge obj={chl} />
      </Columns.Column>
    )
  })

  return  <Columns className="is-mobile">{challenges}</Columns>
}


export default ChallengeList;