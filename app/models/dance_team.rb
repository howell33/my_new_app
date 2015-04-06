class DanceTeam < ActiveRecord::Base
	validates_presence_of :name, :email
  validates_numericality_of :members, greater_than: 0

end
