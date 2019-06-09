class Problem < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :link, presence: true, uniqueness: true
  validates :solution, presence: true
end
