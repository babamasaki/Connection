class Entry < ApplicationRecord
	belongs_to :user
	belongs_to :job_listing
end
