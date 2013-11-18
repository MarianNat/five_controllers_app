class Post < ActiveRecord::Base
  validates :message, presence: true, uniqueness: true 
end
