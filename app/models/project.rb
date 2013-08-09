class Project < ActiveRecord::Base
  attr_accessible :desc, :name, :user_id
end
