# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# questions = Question.create( [{ option_a: 'a', option_b: 'b' },
#                               { option_a: 'Q', option_b: 'Z' }] * 50 )

User.create(email: 'anon@anon.who', password: '12341234')
