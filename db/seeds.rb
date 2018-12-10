# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

3.times do |topic|
	Topic.create!(
		title: "Topic #{topic}"
		)
end

puts "3 topics were created!"


10.times do |blog|
	Blog.create!(
		title: "My Blog Post #{blog}",
		body: "LOrem ipsum bla bal bla",
		topic_id: Topic.last.id
		)
end

puts "10 blog posts created"

5.times do |skill|
	Skill.create!(
		title: "Rails #{skill}",
		percent_utilized: 15
		)
end

puts "5 skills made"

8.times do |portfolio_item|
	Portfolio.create!(
		title: "Portfolio title: #{portfolio_item}",
		subtitle: "Ruby on Rails",
		body: "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, 
		totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt 
		xplicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur 
		magni dolores eos qui ratione voluptatem sequi ",
		main_image: "http://placehold.it/600x400",
		thumb_image: "http://placehold.it/350x200"

		)
end

1.times do |portfolio_item|
	Portfolio.create!(
		title: "Portfolio title: #{portfolio_item}",
		subtitle: "Angular",
		body: "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, 
		totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt 
		xplicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur 
		magni dolores eos qui ratione voluptatem sequi ",
		main_image: "http://placehold.it/600x400",
		thumb_image: "http://placehold.it/350x200"

		)

end