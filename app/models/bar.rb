class Bar < ActiveRecord::Base
  has_many :ideas
  has_many :creators
end
