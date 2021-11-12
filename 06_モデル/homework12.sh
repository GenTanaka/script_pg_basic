root@cc51248da6c5:/home/school# rails c
Running via Spring preloader in process 3193
Loading development environment (Rails 6.1.4.1)
irb(main):001:0> x = Faculty.new(name: '環境情報')
   (0.9ms)  SELECT sqlite_version(*)
=>
#<Faculty:0x000055f770ba2e90
...
irb(main):002:0> x.save
  TRANSACTION (0.1ms)  begin transaction
  Faculty Create (9.8ms)  INSERT INTO "faculties" ("name", "created_at", "updated_at") VALUES (?, ?, ?)  [["name", "環境情報"], ["created_at", "2021-11-12 05:02:45.733371"], ["updated_at", "2021-11-12 05:02:45.733371"]]
  TRANSACTION (5.7ms)  commit transaction
=> true
irb(main):003:0> Faculty.find(2)
  Faculty Load (2.9ms)  SELECT "faculties".* FROM "faculties" WHERE "faculties"."id" = ? LIMIT ?  [["id", 2], ["LIMIT", 1]]
=>
#<Faculty:0x000055f771a95358
 id: 2,
 name: "環境情報",
 created_at: Fri, 12 Nov 2021 05:02:45.733371000 UTC +00:00,
 updated_at: Fri, 12 Nov 2021 05:02:45.733371000 UTC +00:00>
 irb(main):004:0> y = Student.new(name: '花子', grade: 1, faculty_id: 2)
   (1.0ms)  SELECT sqlite_version(*)
=> #<Student:0x000055f76ff92b28 id: nil, name: "花子", faculty_id: 2, grade: 1, created_at: nil, updated_at: nil>
irb(main):005:0> y.save
  TRANSACTION (0.1ms)  begin transaction
  Faculty Load (0.5ms)  SELECT "faculties".* FROM "faculties" WHERE "faculties"."id" = ? LIMIT ?  [["id", 2], ["LIMIT", 1]]
  Student Create (7.6ms)  INSERT INTO "students" ("name", "faculty_id", "grade", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?)  [["name", "花子"], ["faculty_id", 2], ["grade", 1], ["created_at", "2021-11-12 05:06:34.572434"], ["updated_at", "2021-11-12 05:06:34.572434"]]
  TRANSACTION (4.7ms)  commit transaction
=> true
irb(main):006:0> z = Student.new(name: '一郎', grade: 2, faculty_id: 2)
=> #<Student:0x000055f770fd96f8 id: nil, name: "一郎", faculty_id: 2, grade: 2, created_at: nil, updated_at: nil>
irb(main):007:0> z.save
  TRANSACTION (0.1ms)  begin transaction
  Faculty Load (2.0ms)  SELECT "faculties".* FROM "faculties" WHERE "faculties"."id" = ? LIMIT ?  [["id", 2], ["LIMIT", 1]]
  Student Create (6.6ms)  INSERT INTO "students" ("name", "faculty_id", "grade", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?)  [["name", "一郎"], ["faculty_id", 2], ["grade", 2], ["created_at", "2021-11-12 05:07:12.348208"], ["updated_at", "2021-11-12 05:07:12.348208"]]
  TRANSACTION (5.1ms)  commit transaction
=> true
irb(main):008:0> Student.find(2)
  Student Load (2.3ms)  SELECT "students".* FROM "students" WHERE "students"."id" = ? LIMIT ?  [["id", 2], ["LIMIT", 1]]
=>
#<Student:0x000055f771b53cb8
 id: 2,
 name: "花子",
 faculty_id: 2,
 grade: 1,
 created_at: Fri, 12 Nov 2021 05:06:34.572434000 UTC +00:00,
 updated_at: Fri, 12 Nov 2021 05:06:34.572434000 UTC +00:00>
irb(main):009:0> Student.find(3)
  Student Load (1.5ms)  SELECT "students".* FROM "students" WHERE "students"."id" = ? LIMIT ?  [["id", 3], ["LIMIT", 1]]
=>
#<Student:0x000055f771c26960
 id: 3,
 name: "一郎",
 faculty_id: 2,
 grade: 2,
 created_at: Fri, 12 Nov 2021 05:07:12.348208000 UTC +00:00,
 updated_at: Fri, 12 Nov 2021 05:07:12.348208000 UTC +00:00>
 irb(main):010:0> a = Faculty.find(2)
   (0.8ms)  SELECT sqlite_version(*)
  Faculty Load (1.5ms)  SELECT "faculties".* FROM "faculties" WHERE "faculties"."id" = ? LIMIT ?  [["id", 2], ["LIMIT", 1]]
=> #<Faculty:0x000055f7701e3170 id: 2, name: "環境情報", created_at: Fri, 12 Nov 2021 05:02:45.733371000 UTC +00:00, updated_at: Fri, 12 Nov 2021 05:02:45.733371000 UTC +00:00>
irb(main):011:0> a.students
  Student Load (1.4ms)  SELECT "students".* FROM "students" WHERE "students"."faculty_id" = ?  [["faculty_id", 2]]
=>
[#<Student:0x000055f770c2a660
  id: 2,
  name: "花子",
  faculty_id: 2,
  grade: 1,
  created_at: Fri, 12 Nov 2021 05:06:34.572434000 UTC +00:00,
  updated_at: Fri, 12 Nov 2021 05:06:34.572434000 UTC +00:00>,
 #<Student:0x000055f770c8e2a0
  id: 3,
  name: "一郎",
  faculty_id: 2,
  grade: 2,
  created_at: Fri, 12 Nov 2021 05:07:12.348208000 UTC +00:00,
  updated_at: Fri, 12 Nov 2021 05:07:12.348208000 UTC +00:00>]