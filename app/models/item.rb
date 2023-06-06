class Item < ApplicationRecord
  belongs_to :category

  validates :name, presence: true
  validates :name, uniqueness: { case_insensitive: false }
end
