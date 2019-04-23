
x = 0
3.times do
    x += 1
    JobListing.seed do |s|
        s.company_id = x
        s.genre_id = "0#{x}"
        s.price = 10000
        s.place = '千葉県'
        s.date_time = Time.zone.now
        s.people = '3人'
        s.details = '詳細、詳細、詳細、詳細、詳細、詳細、詳細、詳細、詳細'
    end
end


