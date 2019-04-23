z = 0
3.times do
    z += 1
    Company.seed do |s|
        s.company_name = "company#{z}"
        s.email = "company#{z}@com"
        s.password = "asdasd"
        s.phone_number = "070-0000-0000-#{z}"
        s.genre_id = "0#{z}"
        s.capital = "300万円"
        s.emoloyee_number = "50人"
        s.postcode = "311-1304"
        s.prefecture = "茨城県"
        s.city = "東茨城郡大洗町和銅"
        s.street = "1-2-#{z}"
        s.building = "大洗女子学園 学生寮"
    end
end

