# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  it 'deve conter um username' do
    user = build(:user, full_name: nil)
    expect(user).not_to be_valid
  end

  it 'deve criar o username com base no nome do usuário' do
    user = build(:user, full_name: 'Israel Souza', username: nil)
    expect(user).to be_valid
    expect(user.username).to eql('israels')
  end


  context "Testes relacionados a challenges" do 
    it 'Deve associar os desafios com o usuário' do 
      user =  build(:user)
      3.times do 
        user.challenges << build(:challenge, author: user)
      end

      expect(user.challenges).not_to be_empty
    end
  end
end
