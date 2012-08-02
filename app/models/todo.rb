class Todo < ActiveRecord::Base
  attr_accessible :name, :due_date
  validates_presence_of :name


end
