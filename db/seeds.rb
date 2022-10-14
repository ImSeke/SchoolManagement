# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Admin.create(name: "Tanavast", email: "tanavast@example.com", password: "password")

Teacher.create(name: "Kaladin", email: "kaladin@example.com", password: "password")
Teacher.create(name: "Shallan", email: "shallan@example.com", password: "password")
Teacher.create(name: "Dalinar", email: "dalinar@example.com", password: "password")
Teacher.create(name: "Adolin", email: "adolin@example.com", password: "password")
Teacher.create(name: "Jasnah", email: "jasnah@example.com", password: "password")

Student.create(name: "Teft", email: "teft@example.com", password: "password", group_id: "1")
Student.create(name: "Rock", email: "rock@example.com", password: "password", group_id: "1")
Student.create(name: "Moash", email: "moash@example.com", password: "password", group_id: "1")
Student.create(name: "Lopen", email: "lopen@example.com", password: "password", group_id: "1")
Student.create(name: "Skar", email: "skar@example.com", password: "password", group_id: "1")
Student.create(name: "Sigzil", email: "sigzil@example.com", password: "password", group_id: "2")
Student.create(name: "Rlain", email: "rlain@example.com", password: "password", group_id: "2")
Student.create(name: "Dabbid", email: "dabbid@example.com", password: "password", group_id: "2")
Student.create(name: "Leyten", email: "leyten@example.com", password: "password", group_id: "2")
Student.create(name: "Lyn", email: "lyn@example.com", password: "password", group_id: "2")

Course.create(name:"Windrunner")
Course.create(name:"Edgedancer")
Course.create(name:"Lightweaver")
Course.create(name:"Dustbringer")
Course.create(name:"Bondsmith")

Group.create(name: "Bridge 1")
Group.create(name: "Bridge 2")
Group.create(name: "Bridge 3")
Group.create(name: "Bridge 4")

Lesson.create(location: "Urithiru", hour: "Fri, 14 Oct 2022 09:00:00 +0000", day: "Monday", teacher_id: "2", group_id: "4", course_id: "1")
Lesson.create(location: "Urithiru", hour: "Fri, 14 Oct 2022 12:00:00 +0000", day: "Monday", teacher_id: "2", group_id: "4", course_id: "1")
Lesson.create(location: "Urithiru", hour: "Fri, 14 Oct 2022 09:00:00 +0000", day: "Tuesday", teacher_id: "2", group_id: "1", course_id: "1")
Lesson.create(location: "Urithiru", hour: "Fri, 14 Oct 2022 10:00:00 +0000", day: "Wednesday", teacher_id: "2", group_id: "4", course_id: "1")
Lesson.create(location: "Urithiru", hour: "Fri, 14 Oct 2022 13:00:00 +0000", day: "Wednesday", teacher_id: "2", group_id: "1", course_id: "1")
Lesson.create(location: "Urithiru", hour: "Fri, 14 Oct 2022 09:00:00 +0000", day: "Thursday", teacher_id: "2", group_id: "3", course_id: "1")
Lesson.create(location: "Urithiru", hour: "Fri, 14 Oct 2022 09:00:00 +0000", day: "Friday", teacher_id: "2", group_id: "1", course_id: "1")
Lesson.create(location: "Urithiru", hour: "Fri, 14 Oct 2022 10:00:00 +0000", day: "Friday", teacher_id: "2", group_id: "2", course_id: "1")

Lesson.create(location: "Kholinar", hour: "Fri, 14 Oct 2022 10:00:00 +0000", day: "Monday", teacher_id: "5", group_id: "1", course_id: "2")
Lesson.create(location: "Kholinar", hour: "Fri, 14 Oct 2022 11:00:00 +0000", day: "Tuesday", teacher_id: "5", group_id: "3", course_id: "2")
Lesson.create(location: "Kholinar", hour: "Fri, 14 Oct 2022 11:00:00 +0000", day: "Monday", teacher_id: "5", group_id: "2", course_id: "2")
Lesson.create(location: "Kholinar", hour: "Fri, 14 Oct 2022 10:00:00 +0000", day: "Tuesday", teacher_id: "5", group_id: "3", course_id: "2")
Lesson.create(location: "Kholinar", hour: "Fri, 14 Oct 2022 12:00:00 +0000", day: "Monday", teacher_id: "5", group_id: "1", course_id: "2")
Lesson.create(location: "Kholinar", hour: "Fri, 14 Oct 2022 10:00:00 +0000", day: "Friday", teacher_id: "5", group_id: "1", course_id: "2")
Lesson.create(location: "Kholinar", hour: "Fri, 14 Oct 2022 13:00:00 +0000", day: "Friday", teacher_id: "5", group_id: "2", course_id: "2")
Lesson.create(location: "Kholinar", hour: "Fri, 14 Oct 2022 08:00:00 +0000", day: "Thursday", teacher_id: "5", group_id: "4", course_id: "2")
Lesson.create(location: "Kholinar", hour: "Fri, 14 Oct 2022 08:00:00 +0000", day: "Wednesday", teacher_id: "5", group_id: "2", course_id: "2")
Lesson.create(location: "Kholinar", hour: "Fri, 14 Oct 2022 12:00:00 +0000", day: "Wednesday", teacher_id: "5", group_id: "1", course_id: "2")


Lesson.create(location: "Thaylenah", hour: "Fri, 14 Oct 2022 11:00:00 +0000", day: "Tuesday", teacher_id: "3", group_id: "4", course_id: "3")
Lesson.create(location: "Thaylenah", hour: "Fri, 14 Oct 2022 09:00:00 +0000", day: "Friday", teacher_id: "3", group_id: "1", course_id: "3")
Lesson.create(location: "Thaylenah", hour: "Fri, 14 Oct 2022 11:00:00 +0000", day: "Thursday", teacher_id: "3", group_id: "4", course_id: "3")
Lesson.create(location: "Thaylenah", hour: "Fri, 14 Oct 2022 10:00:00 +0000", day: "Thursday", teacher_id: "3", group_id: "2", course_id: "3")
Lesson.create(location: "Thaylenah", hour: "Fri, 14 Oct 2022 09:00:00 +0000", day: "Wednesday", teacher_id: "3", group_id: "3", course_id: "3")
Lesson.create(location: "Thaylenah", hour: "Fri, 14 Oct 2022 14:00:00 +0000", day: "Friday", teacher_id: "3", group_id: "2", course_id: "3")
Lesson.create(location: "Thaylenah", hour: "Fri, 14 Oct 2022 11:00:00 +0000", day: "Monday", teacher_id: "3", group_id: "3", course_id: "3")
Lesson.create(location: "Thaylenah", hour: "Fri, 14 Oct 2022 11:00:00 +0000", day: "Friday", teacher_id: "3", group_id: "1", course_id: "3")

Lesson.create(location: "Shadesmar", hour: "Fri, 14 Oct 2022 12:00:00 +0000", day: "Friday", teacher_id: "6", group_id: "1", course_id: "4")
Lesson.create(location: "Shadesmar", hour: "Fri, 14 Oct 2022 11:00:00 +0000", day: "Thursday", teacher_id: "6", group_id: "2", course_id: "4")
Lesson.create(location: "Shadesmar", hour: "Fri, 14 Oct 2022 10:00:00 +0000", day: "Monday", teacher_id: "6", group_id: "2", course_id: "4")
Lesson.create(location: "Shadesmar", hour: "Fri, 14 Oct 2022 13:00:00 +0000", day: "Thursday", teacher_id: "6", group_id: "1", course_id: "4")
Lesson.create(location: "Shadesmar", hour: "Fri, 14 Oct 2022 09:00:00 +0000", day: "Tuesday", teacher_id: "6", group_id: "2", course_id: "4")
Lesson.create(location: "Shadesmar", hour: "Fri, 14 Oct 2022 11:00:00 +0000", day: "Tuesday", teacher_id: "6", group_id: "3", course_id: "4")
Lesson.create(location: "Shadesmar", hour: "Fri, 14 Oct 2022 12:00:00 +0000", day: "Wednesday", teacher_id: "6", group_id: "4", course_id: "4")
Lesson.create(location: "Shadesmar", hour: "Fri, 14 Oct 2022 12:00:00 +0000", day: "Thursday", teacher_id: "6", group_id: "4", course_id: "4")

Lesson.create(location: "Kharbranth", hour: "Fri, 14 Oct 2022 13:00:00 +0000", day: "Thursday", teacher_id: "4", group_id: "4", course_id: "5")
Lesson.create(location: "Kharbranth", hour: "Fri, 14 Oct 2022 13:00:00 +0000", day: "Wednesday", teacher_id: "4", group_id: "2", course_id: "5")
Lesson.create(location: "Kharbranth", hour: "Fri, 14 Oct 2022 12:00:00 +0000", day: "Thursday", teacher_id: "4", group_id: "2", course_id: "5")
Lesson.create(location: "Kharbranth", hour: "Fri, 14 Oct 2022 15:00:00 +0000", day: "Wednesday", teacher_id: "4", group_id: "1", course_id: "5")
Lesson.create(location: "Kharbranth", hour: "Fri, 14 Oct 2022 09:00:00 +0000", day: "Monday", teacher_id: "4", group_id: "4", course_id: "5")
Lesson.create(location: "Kharbranth", hour: "Fri, 14 Oct 2022 11:00:00 +0000", day: "Friday", teacher_id: "4", group_id: "3", course_id: "5")
Lesson.create(location: "Kharbranth", hour: "Fri, 14 Oct 2022 13:00:00 +0000", day: "Friday", teacher_id: "4", group_id: "4", course_id: "5")
Lesson.create(location: "Kharbranth", hour: "Fri, 14 Oct 2022 08:00:00 +0000", day: "Tuesday", teacher_id: "4", group_id: "3", course_id: "5")
Lesson.create(location: "Kharbranth", hour: "Fri, 14 Oct 2022 13:00:00 +0000", day: "Tuesday", teacher_id: "4", group_id: "4", course_id: "5")
Lesson.create(location: "Kharbranth", hour: "Fri, 14 Oct 2022 10:00:00 +0000", day: "Wednesday", teacher_id: "4", group_id: "1", course_id: "5")




