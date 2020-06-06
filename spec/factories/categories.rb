# frozen_string_literal: true

FactoryBot.define do
  factory :category do
    title { %w[Front-end Back-end].sample }
  end
end
