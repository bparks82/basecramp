class List < ActiveRecord::Base
  attr_accessible :title

  belongs_to :project

  has_many :todos

end
