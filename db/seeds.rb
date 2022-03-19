Post.destroy_all
puts "Destroyed everything you touch"
posts = [
{
	name: "Девочка на шаре",
	title: "1913",
	author: "Пабло Пикассо",
	content: "«Голубой» и «Розовый»",
  	category_id: 4,
	user_id:2,
	image: File.open(Rails.root.join('public', 'images', 'pic-1.jpg'))
},
{
	name: "Подсолнухи",
	title: "1899",
	author: "Винсент Ван Гог",
	content: "Постимпрессионизм",
  	category_id: 4,
  	user_id: 1,
	image: File.open(Rails.root.join('public', 'images', 'pic-2.jpg'))
},
{
	name: "Возвращение блудного сына",
	title: "1905",
	author: "Рембранбт",
	content: "Барокко",
  	category_id: 4,
  	user_id: 1,
	image: File.open(Rails.root.join('public', 'images', 'pic-3.jpg'))
},
{
	name: "Вакх",
	title: "1938",
	author: "Паул Рубенс",
	content: "Барокко",
  	category_id: 4,
  	user_id: 1,
	image: File.open(Rails.root.join('public', 'images', 'pic-4.jpg'))
},
{
	name: "Охотники на снегу",
	title: "1899",
	author: "Питер Брейгель Старший",
	content: "Северное Возрождение",
  	category_id: 4,
  	user_id: 1,
	image: File.open(Rails.root.join('public', 'images', 'pic-5.jpg'))
},
{
	name: "Крик",
	title: "1905",
	author: "Эдвард Мунк",
	content: "Экспрессионизм",
  	category_id: 4,
  	user_id: 1,
	image: File.open(Rails.root.join('public', 'images', 'pic-6.jpg'))
},
{
	name: "Сад в Ветейя",
	title: "1881",
	author: "Клод Моне",
	content: "Импрессионизм",
  	category_id: 4,
  	user_id: 1,
	image: File.open(Rails.root.join('public', 'images', 'pic-7.jpg'))
}
]

posts.each do |post|
postik = Post.create!(post)
puts post
puts postik
puts postik.to_json
puts "Some magic just create a #{ postik.name } with id #{ postik.id }!"
end
