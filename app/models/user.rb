# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # Unused modules at the moment :confirmable,:omniauthable
# :secure_validatable,
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :lockable, :timeoutable, :trackable, :password_expirable,  :password_archivable, :session_limitable, :expirable
end
