class Search < ActiveRecord::Base
	attr_accessible :tipo, :date, :user_id, :atributos

	belongs_to :user

	validates :tipo, :presence => true,
					 :length   => { :within => 4..40 }

	validates :user_id, :presence => true

end
