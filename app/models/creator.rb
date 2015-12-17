class Creator < ActiveRecord::Base
  authenticates_with_sorcery!
  validates_confirmation_of :password, message: "Should match confirmation", if: :password
  has_many :ideas
  belongs_to :bar
end
