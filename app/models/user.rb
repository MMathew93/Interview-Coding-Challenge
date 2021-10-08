# frozen_string_literal: true

class User < ApplicationRecord
  has_secure_password
  has_many :notes
  validates :email, presence: true, uniqueness: true, format: { with: /\A[^@\s]+@[^@\s]+\z/, message: 'Invalid email' }
  validates :password, presence: true
end
