# frozen_string_literal: true

class Course < ApplicationRecord
  validates :name, presence: true, length: { minimum: 3, maximum: 20 }, uniqueness: { case_sensitive: false }
  has_many :lessons
end
