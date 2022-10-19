FactoryBot.define do
  factory :lesson do
    location { "USA" }
    hour { "Fri, 14 Oct 2022 10:00:00 +0000" }
    day { "monday" }
    teacher_id { 1 }
    group_id { 1 }
    course_id { 1 }
  end
end
