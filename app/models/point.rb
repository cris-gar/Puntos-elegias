class Point < ActiveRecord::Base
  belongs_to :user

  validates :user, :cantidad, presence: true
  validates :cantidad, numericality: { only_integer: true }

end
