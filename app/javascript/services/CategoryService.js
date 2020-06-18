import Api from './Api'

class CategoryService {
  index(){
    return Api.get('/categories')
  }

  create(data){
    let errors = []

    if(data.title == ""){
      errors.push(new Error("O titulo não deve estar vazio"))
    }

    if(errors.length == 0){
      return Api.post('/categories', data)
    }
  }

}


export default new CategoryService;