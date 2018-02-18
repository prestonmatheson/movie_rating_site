class Movie < ApplicationRecord
  # belongs_to :user, dependent: :destroy

  has_many :ratings
end
