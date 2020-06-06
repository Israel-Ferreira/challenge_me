# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  before_validation :create_username 

  def create_username
    if username.nil?
      full_name_words = full_name.split(' ')
      self.username = (full_name_words[0] + full_name_words[-1][0]).downcase
    end
  end
end
