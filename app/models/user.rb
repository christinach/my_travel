# frozen_string_literal: true

class User < ApplicationRecord
  validates :email, uniqueness: true
  has_secure_password
  has_secure_password :recovery_password, validations: false
end
