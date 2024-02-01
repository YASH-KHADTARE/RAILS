class Member < ApplicationRecord
  has_many :transactions , dependent: :nullify

  validates :name, presence: { message: "name can't be blank" }
  validates :date_of_birth, presence: { message: "date of birth can't be blank" }
  validates :gender , inclusion: { in: ['M','F'], message:"Gender must be 'M' or 'F'"} , presence: true

  after_create :successfull_registration


  private
  def successfull_registration
    puts "#{name} Welcome to our library S!!!"
  end

end
