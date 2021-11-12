root@cc51248da6c5:/home/school# rails generate model course name:string credit:int compulsory:boolean
Running via Spring preloader in process 2955
      invoke  active_record
      create    db/migrate/20211112033754_create_courses.rb
      create    app/models/course.rb
      invoke    test_unit
      create      test/models/course_test.rb
      create      test/fixtures/courses.yml
root@cc51248da6c5:/home/school# rails db:migrate
== 20211112044259 CreateCourses: migrating ====================================
-- create_table(:courses)
   -> 0.0084s
== 20211112044259 CreateCourses: migrated (0.0085s) ===========================

root@cc51248da6c5:/home/school# rails c
Running via Spring preloader in process 3149
Loading development environment (Rails 6.1.4.1)
irb(main):001:0> x = Course.new(name: '体育1',credit: 1, compulsory: true)
=>
#<Course:0x000055f771a28190
...
irb(main):002:0> x.save
  TRANSACTION (0.1ms)  begin transaction
  Course Create (10.3ms)  INSERT INTO "courses" ("name", "credit", "compulsory", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?)  [["name", "体育1"], ["credit", 1], ["compulsory", 1], ["created_at", "2021-11-12 04:49:08.128960"], ["updated_at", "2021-11-12 04:49:08.128960"]]
  TRANSACTION (5.9ms)  commit transaction
=> true
irb(main):003:0> y = Course.new(name: 'プログラミング言語論',credit: 2, compulso
ry: false)
=>
#<Course:0x000055f771bcb6f0
...
irb(main):004:0> y.save
  TRANSACTION (0.1ms)  begin transaction
  Course Create (8.5ms)  INSERT INTO "courses" ("name", "credit", "compulsory", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?)  [["name", "プログラミング言語論"], ["credit", 2], ["compulsory", 0], ["created_at", "2021-11-12 04:50:28.269674"], ["updated_at", "2021-11-12 04:50:28.269674"]]
  TRANSACTION (5.2ms)  commit transaction
=> true
irb(main):005:0> Course.find(1)
  Course Load (1.6ms)  SELECT "courses".* FROM "courses" WHERE "courses"."id" = ? LIMIT ?  [["id", 1], ["LIMIT", 1]]
=>
#<Course:0x000055f771113fa0
 id: 1,
 name: "体育1",
 credit: 1,
 compulsory: true,
 created_at: Fri, 12 Nov 2021 04:49:08.128960000 UTC +00:00,
 updated_at: Fri, 12 Nov 2021 04:49:08.128960000 UTC +00:00>
irb(main):006:0> Course.find(2)
  Course Load (2.1ms)  SELECT "courses".* FROM "courses" WHERE "courses"."id" = ? LIMIT ?  [["id", 2], ["LIMIT", 1]]
=>
#<Course:0x000055f7702785e0
 id: 2,
 name: "プログラミング言語論",
 credit: 2,
 compulsory: false,
 created_at: Fri, 12 Nov 2021 04:50:28.269674000 UTC +00:00,
 updated_at: Fri, 12 Nov 2021 04:50:28.269674000 UTC +00:00>