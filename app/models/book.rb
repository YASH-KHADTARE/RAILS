class Book < ApplicationRecord
  has_many :transactions , dependent: :nullify
  validates :ISBN, presence: true, length: { is: 10, message: "ISBN should be a 10-digit number" }
  validates :title, presence: { message: "title can't be blank" }
  validates :author, presence: { message: "author can't be blank" }
  validates :genre, presence: { message: "genere can't be blank" }
  validates :publish_year, presence: { message: "year can't be blank" }
end
