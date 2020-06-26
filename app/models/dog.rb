class Dog < ApplicationRecord
  validates :name, :age, :enjoys, presence:true
  validates :enjoys, length: { minimum: 10 }
  validates :enjoys, length: { maximum: 500 }
  validates :age, numericality: { only_integer: true }
  validates :name, length: { minimum: 2 }
  validates :img, uniqueness: true
end
