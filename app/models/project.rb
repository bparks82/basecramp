class Project < ActiveRecord::Base

  attr_accessible :name, :public
  belongs_to :user
  has_many :lists
  has_many :todos, :through => :lists

end
