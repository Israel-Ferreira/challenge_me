import Api from './Api'

class ChallengeService {
  index(){
    return Api.get('/challenges')
  }
}

export default new ChallengeService;