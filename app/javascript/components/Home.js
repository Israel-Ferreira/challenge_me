import React, {Fragment,useState, useEffect} from 'react'
import {Columns, Heading} from 'react-bulma-components'

import CategoryService from '../services/CategoryService'
import ChallengeService from '../services/ChallengeService';


const Home =  (props) => {
  const [categories, setCategories] = useState([])
  const [challenges, setChallenges] = useState([])

  async function fetchCategories(){
    const resp =  await CategoryService.index()
    setCategories(resp.data['categories'])
  }

  async function fetchChallenges(){
    const resp =  await ChallengeService.index()
    setChallenges(resp.data['challenges'])
  }



  return (
    <Fragment>
      <div>
        <Heading className="has-text-danger" size={4}>
          Desafios Recentes
        </Heading>
      </div>
    </Fragment>
  )

}