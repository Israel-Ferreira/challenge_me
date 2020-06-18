# frozen_string_literal: true

class Challenge < ApplicationRecord
  belongs_to :author, class_name: 'User', foreign_key: 'author_id'
  validates :title, :description, presence: true 
  belongs_to :category

  validates :description, length: {minimum: 14, maximum: 256}
end

