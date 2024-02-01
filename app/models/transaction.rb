class Transaction < ApplicationRecord
  belongs_to :book
  belongs_to :member
  validates :issue_date, :due_date, presence: { message: "can't be blank" }
  validate :due_date_greater_than_issue_date
  
  
  private 
  def due_date_greater_than_issue_date
    return unless issue_date && due_date
    if due_date <= issue_date
      errors.add(:due_date , "due_date must be greater than issue date")
    end
  end
end