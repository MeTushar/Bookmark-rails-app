# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#Bookmark should have title, url, comment, favorite



Bookmark.create([
	{
		:title => 'Treehouse website',
		:url => 'https://www.teamtreehouse.com',
		:description => 'Awesome website to learn',
		:favorite => true	
	},
	{
		:title => 'Youtube',
		:url => 'https://www.youtube.com',
		:description => 'Online video platform to explore and learn'
	},
	{
		:title => 'Facebook',
		:url => 'https://www.facebook.com',
		:description => 'Social networking platform'
	}

])

