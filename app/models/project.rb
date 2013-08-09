class Project < ActiveRecord::Base
  attr_accessible :desc, :name, :user_id

  belongs_to :user

  validates :name, presence: true

  def to_param
	  "#{id}-#{name}".parameterize
  end
end
