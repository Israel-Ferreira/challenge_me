# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Challenge, type: :model do
  it 'Não deve permitir que o desafio seja criado sem um autor ' do
    challenge = build(:challenge, author: nil)
    expect(challenge).not_to be_valid
  end

  it 'Não deve criar sem o titulo' do
    challenge = build(:challenge, title: nil)
    expect(challenge).not_to be_valid 
  end
end
