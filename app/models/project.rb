class Project < ActiveRecord::Base

  attr_accessible :name, :public
  belongs_to :user
  has_many :lists

  PUBLIC = ['true', 'false']


  def private?
  end

  def public?
  end

end
