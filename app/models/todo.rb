class Todo < ActiveRecord::Base
  attr_accessible :name, :due_date, :list_id
  validates_presence_of :name

  belongs_to :list
end
