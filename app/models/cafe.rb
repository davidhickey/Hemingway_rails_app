class Cafe < ActiveRecord::Base
  has_many :articles
  has_many :authors
end
