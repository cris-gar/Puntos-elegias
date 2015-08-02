class Point < ActiveRecord::Base
  belongs_to :user

  validates :user, :cantidad, presence: true

end
