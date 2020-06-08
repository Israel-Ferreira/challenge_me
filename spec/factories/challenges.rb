FactoryBot.define do
  factory :challenge do
    author { create(:user) }
    title { "Desafio Teste" }
    description { "Um desafio de teste" }
  end
end
