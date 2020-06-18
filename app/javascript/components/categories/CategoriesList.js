import React from 'react'
import {Columns} from 'react-bulma-components'
import Category from './Category'

const CategoriesList = (props) => {
  const categories = props.list.map((category,key) => {
    return (
      <Columns.Column key={key} desktop={{size: 2}} mobile={{size: 6}}>
        <Category id={category.id} title={category.title} />
      </Columns.Column>
    )
  })

  return <Columns className="is-mobile" size={2}>{categories}</Columns>
}

export default CategoriesList;