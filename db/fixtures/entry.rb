x = 0
3.times do
	x += 1
		Entry.seed do |s|
			s.user_id = x
			s.job_listing_id = x
			s.contract_date = Time.zone.now
   		end
end

