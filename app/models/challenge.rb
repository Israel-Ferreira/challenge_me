# frozen_string_literal: true

class Challenge < ApplicationRecord
  belongs_to :author, class_name: 'User', foreign_key: 'author_id'
  validates :title, :description, presence: true 
  

end
