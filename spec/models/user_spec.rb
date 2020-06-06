# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  it 'deve conter um username' do
    user = create(:user, username: nil)
    expect(user).to be_valid
  end

  it 'deve criar o username com base no nome do usuário' do
    user = create(:user, full_name: 'Israel Souza', username: nil)
    expect(user).to be_valid
    expect(user.username).to eql('israels')
  end
end
