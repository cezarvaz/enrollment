class Course < ActiveRecord::Base
  validates :name, :description, presence: true
end
