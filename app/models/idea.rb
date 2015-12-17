class Idea < ActiveRecord::Base
  belongs_to :creator
  belongs_to :bar
end
