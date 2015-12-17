class Idea < ActiveRecord::Base
  belongs_to :author
  belongs_to :cafe
end
