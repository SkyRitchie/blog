# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Post.create([
	{
		title: "Hello World",
		body: "Lorem Ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor blah blah",
		publication: "The Steer Blog",
		author: "Tim McDonald-Bell",
		pull_quote: "dolor sit...",
		published_at: 1.week.ago,
		url: "http://url.steer.me/Blog"
		}, 
	{
		title: "Goodbye Yellow Brick Road",
		body: "Lorem Ipsum",
		publication: "The Steer Blog",
		author: "Tim McDonald-Bell",
		pull_quote: "dolor sit...",
		published_at: 2.weeks.ago
		}, 
	{
		title: "Hello World",
		body: "Lorem Ipsum",
		publication: "The Steer Blog",
		author: "Tim McDonald-Bell",
		pull_quote: "dolor sit...",
		published_at: 3.hours.ago
	}
])

post = Post.last

post.comments.create({body: "This is a primary example of why I hate you."})