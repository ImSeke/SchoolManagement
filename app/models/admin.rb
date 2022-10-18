# frozen_string_literal: true

class Admin < User
  validates :name, :email, presence: true
end
