class Genre < ApplicationRecord
	has_many :companies
	has_many :job_listings, dependent: :destroy
end
