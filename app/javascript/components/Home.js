import React, {Fragment,useState, useEffect} from 'react'
import {Columns, Heading} from 'react-bulma-components'

import CategoryService from '../services/CategoryService'
import ChallengeService from '../services/ChallengeService';

import CategoryList  from  './categories/CategoriesList'
import ChallengeList from './challenges/ChallengeList'


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


  useEffect(() => {
    fetchCategories()
    fetchChallenges()
  },[])


  const catsList =  <CategoryList list={categories} />
  const challengesList =  <ChallengeList list={challenges}  />



  return (
    <Fragment>
      <div>
        <Heading className="has-text-danger" size={4}>
          Desafios Recentes
        </Heading>
        <Columns className="is-mobile">{challengesList}</Columns>

        <Heading className="has-text-danger" size={4}>
          Desafios Recentes
        </Heading>
        <Columns className="is-mobile">{catsList}</Columns>
      </div>
    </Fragment>
  )

}


export default Home;