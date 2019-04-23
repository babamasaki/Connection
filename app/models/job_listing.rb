class JobListing < ApplicationRecord
	belongs_to :company
	has_many :entries
	belongs_to :genre
end
