# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
@c1 = Channel.create(name: 'StarPlus')
@c2 = Channel.create(name: 'Sony TV')
@c3 = Channel.create(name: 'Pogo')
@c4 = Channel.create(name: 'Zee Tv')


@c1.tv_shows.create(name: 'Ek Bhram…Sarvagun Sampanna', timing: '7:00 PM')
@c1.tv_shows.create(name: 'Dil Toh Happy Hai Ji ', timing: '7:30 PM')
@c1.tv_shows.create(name: 'Kasauti Zindagii Kay 2 ', timing: '8:00 PM')
@c1.tv_shows.create(name: 'Kulfi Kumar Bajewala', timing: '8:30 PM')
@c1.tv_shows.create(name: 'Kahan Hum Kahan Tum', timing: '9:00 PM')
@c1.tv_shows.create(name: 'Yeh Rishta Kya Kehlata Hai', timing: '9:30 PM')


@c2.tv_shows.create(name: 'Mere Sai', timing: '7:00 PM')
@c2.tv_shows.create(name: 'Vighnaharta Ganesh', timing: '7:30 PM')
@c2.tv_shows.create(name: 'Ishaaron Ishaaron Mein', timing: '8:00 PM')
@c2.tv_shows.create(name: 'Patiala Babes', timing: '8:30 PM')


@c4.tv_shows.create(name: 'Yeh Teri Galliyan', timing: '7:00 PM')
@c4.tv_shows.create(name: 'Kaleerein', timing: '7:30 PM')
@c4.tv_shows.create(name: 'Zindagi Ki Mehek', timing: '8:00 PM')
@c4.tv_shows.create(name: 'Piyaa Albela', timing: '8:30 PM')
@c4.tv_shows.create(name: 'Kumkum Bhagya', timing: '9:00 PM')


@c3.tv_shows.create(name: 'Super Bheem', timing: '3:30 PM')
@c3.tv_shows.create(name: 'Grizzy And The Lemmings', timing: '4:30 PM')
@c3.tv_shows.create(name: 'Mr. Bean: The Animated Series', timing: '5:30 PM')
@c3.tv_shows.create(name: 'Chhota Bheem Chatpat (Shorts)', timing: '6:30 PM')
@c3.tv_shows.create(name: 'M.A.D.', timing: '8:00 PM')