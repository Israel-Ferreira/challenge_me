import React, {Fragment} from 'react'
import {Heading } from 'react-bulma-components'
import {Link} from 'react-router-dom'
import styled from 'styled-components'

const DivVSpaced = styled.div`
  margin-top: 10px;
`

const Category = (props) => (
  <Link to={`/categories/${props.id}`}>
    <DivVSpaced>
      <Heading size={6} className="has-text-white"  subtitle>
        {props.title}
      </Heading>
    </DivVSpaced>
  </Link>
)

export default Category;