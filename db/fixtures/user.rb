z = 0
x = 0

3.times do
    z += 1
    User.seed do |s|
        s.name = "user#{z}"
        s.email = "user#{z}@com"
        s.password = "asdasd"
        s.phone_number = "070-0000-0000-#{z}"
        s.admin_user = false
        s.postcode = "311-1304"
        s.prefecture = "茨城県"
        s.city = "東茨城郡大洗町和銅"
        s.street = "1-2-#{z}"
        s.building = "大洗女子学園 学生寮"
    end
end