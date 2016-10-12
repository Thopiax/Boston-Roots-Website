# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# TEAM MEMBERS CREATION

puts "Seeding..."

Member.create( name: 'Viraj Ayar', position: 'Co-Founder and President', bio: 'Viraj Ayar is currently a Freshman double-majoring in economics and political science at the University of Massachusetts Amherst. During his free time, he religiously follows American politics and current world events. When he’s not being a political junkie, he likes to read anything he can get his hands on. ',
               path: 'viraj.jpg')
Member.create( name: 'Alex Nehrbass', position: 'Co-Founder and President', bio: 'Alex Nehrbass is double-majoring in political science and philosophy at McGill University in Montreal. He has been a volunteer on multiple political campaigns and competed on the All-American Model United Nations (debate) team. At McGill, he hopes to deepen his knowledge of world issues and work hands-on to help resolve some of our country’s major problems. ',
               path: 'alex.jpg')
Member.create( name: 'Leo Yu', position: 'Vice President', bio: 'Born in Chicago, grew up in Jersey and Boston, now in New York. He has a passion for politics and leadership. When he has spare time he enjoys listening to rap and RnB music.',
               path: 'leo.jpg')
Member.create( name: 'Jonathan Ge', position: 'Chief Operations Officer', bio: 'Spent his childhood in Hangzhou, China, before moving to Toronto, Canada. Jonathan has a strong interest in entrepreneurship and politics. He plans to run for office one day and hopes to be the first Asian Prime Minister.',
               path: 'jon.jpg')
Member.create( name: 'Rafael Toletti Ballestiero', position: 'Chief Technology Officer', bio: 'Rafael is currently studying math and computer science at Imperial College London who attended middle and high school in Cambridge, MA. His passion for soccer, travel and helping his community save him from getting too absorbed with his busy academic schedule.',
               path: '')

puts "Seeded members"
