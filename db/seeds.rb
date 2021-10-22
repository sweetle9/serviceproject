Post.destroy_all
puts "Destroyed everything you touch"
posts = [
{
	name: "Девочка на шаре",
	title: "1913",
	author: "Пабло Пикассо",
	content: "«Голубой» и «Розовый»",
	image: File.open(Rails.root.join('public', 'images', 'pic-1.jpg'))
},
{
	name: "Подсолнухи",
	title: "1899",
	author: "Винсент Ван Гог",
	content: "Постимпрессионизм",
	image: File.open(Rails.root.join('public', 'images', 'pic-2.jpg'))
}
]

posts.each do |post|
	postik = Post.create(post)
	puts "Some magic just create a #{ postik.name } with id #{ postik.id }!"
end
