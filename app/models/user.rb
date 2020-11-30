# frozen_string_literal: true

class User < ApplicationRecord
  acts_as_voter
  # Include default devise modules. Others available are:
  # Unused modules at the moment :confirmable,:omniauthable
# :secure_validatable,
  has_many :posts
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :lockable, :timeoutable, :trackable, :password_expirable,  :password_archivable, :session_limitable, :expirable
end
