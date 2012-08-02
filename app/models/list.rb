class List < ActiveRecord::Base
  attr_accessible :title, :todos

  belongs_to :project

  has_many :todos

end
