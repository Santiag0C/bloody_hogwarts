class Course <ApplicationRecord
  has_many :students

  validates_presence_of :name
end
