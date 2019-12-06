class Student <ApplicationRecord
  has_many :corses
  validates_presence_of :name,
                        :age,
                        :house

end
