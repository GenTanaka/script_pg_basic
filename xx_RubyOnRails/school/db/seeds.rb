# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Faculty.create(name: '総合政策')
Faculty.create(name: '環境情報')
Course.create(name: '体育１', credit: 1, compulsory: true)
Course.create(name: 'プログラミング言語論', credit: 2, compulsory: false)