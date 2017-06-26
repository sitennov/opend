class Advert < ApplicationRecord
  validates :firstname, :lastname, :age, presence: true
end
