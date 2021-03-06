Post.destroy_all
Category.destroy_all
User.destroy_all
puts "Destroyed everything you touch"

 user = User.new(
      :email                 => "second@gmail.com",
      :username              => "PicassoLover",
      :password              => "123456789",
      :password_confirmation => "123456789",
      :id 					=> "2",
      :avatar			    => File.open(Rails.root.join('public', 'images', 'pic-1.jpg'))
  )
  user.save!

user = User.new(
      :email                 => "first@gmail.com",
      :username              => "ArtIsHard",
      :password              => "123456789",
      :password_confirmation => "123456789",
      :id 					=> "1",
      :avatar			    => File.open(Rails.root.join('public', 'images', 'pic-1.jpg'))
  )
  user.save!

categories = [
{
 	name: 'Картины',
 	display_in_navbar: true,
 	id:12
},
{
 	name: 'Подготовка',
 	display_in_navbar: true,
 	id:13
},
{
 	name: 'Статьи',
 	display_in_navbar: true,
 	id:14
},
{
 	name: 'Исследования',
 	display_in_navbar: true,
 	id:15
}
]

posts = [
{
	name: "Девочка на шаре",
	title: "1913",
	author: "Пабло Пикассо",
	content: "«Голубой» и «Розовый»",
  	category_id:12,
	user_id:2,
	image: File.open(Rails.root.join('public', 'images', 'pic-1.jpg'))
},
{
	name: "Возвращение блудного сына",
	title: "1905",
	author: "Рембранбт",
	content: "Барокко",
  	category_id:12,
  	user_id: 1,
	image: File.open(Rails.root.join('public', 'images', 'pic-3.jpg'))
},
{
	name: "Вакх",
	title: "1938",
	author: "Паул Рубенс",
	content: "Барокко",
  	category_id:12,
  	user_id: 1,
	image: File.open(Rails.root.join('public', 'images', 'pic-4.jpg'))
},
{
	name: "Охотники на снегу",
	title: "1899",
	author: "Питер Брейгель Старший",
	content: "Северное Возрождение",
  	category_id:12,
  	user_id: 2,
	image: File.open(Rails.root.join('public', 'images', 'pic-5.jpg'))
},
{
	name: "Сад в Ветейя",
	title: "1881",
	author: "Клод Моне",
	content: "Импрессионизм",
  	category_id: 12,
  	user_id: 1,
	image: File.open(Rails.root.join('public', 'images', 'pic-7.jpg'))
},
{
	name: "Чесменский бой в ночь с 25 на 26 июня 1770 года",
	title: "1923",
	author: "Айвазовский",
	content: "",
  	category_id:12,
	user_id:2,
	image: File.open(Rails.root.join('public', 'images', 'pic-15.jpg'))
},
{
	name: "Гигиея",
	title: "1901",
	author: "Гюстав Климт",
	content: "",
  	category_id:12,
	user_id:2,
	image: File.open(Rails.root.join('public', 'images', 'pic-8.jpg'))
},
{
	name: "Ариэль",
	title: "1800-1810",
	author: "Иоганн Генри Фюзли",
	content: "",
  	category_id:12,
	user_id:2,
	image: File.open(Rails.root.join('public', 'images', 'pic-9.jpg'))
},
{
	name: "Ветка цветущего миндаля",
	title: "1854",
	author: "Винсенс Ван Гог",
	content: "",
  	category_id:12,
	user_id:2,
	image: File.open(Rails.root.join('public', 'images', 'pic-10.jpg'))
},
{
	name: "Подсолнухи",
	title: "1899",
	author: "Винсент Ван Гог",
	content: "Постимпрессионизм",
  	category_id:12,
  	user_id: 1,
	image: File.open(Rails.root.join('public', 'images', 'pic-2.jpg'))
},
{
	name: "Капо ди Ноли",
	title: "1898",
	author: "Поль Синьяк",
	content: "",
  	category_id:12,
	user_id:2,
	image: File.open(Rails.root.join('public', 'images', 'pic-11.jpg'))
},
{
	name: "Молодой Рути в Селейране",
	title: "1882",
	author: "Анри Тулуз-Лотрек",
	content: "",
  	category_id:12,
	user_id:2,
	image: File.open(Rails.root.join('public', 'images', 'pic-16.jpg'))
},
{
	name: "Плясун",
	title: "1790",
	author: "Гойя",
	content: "",
  	category_id:12,
	user_id:2,
	image: File.open(Rails.root.join('public', 'images', 'pic-12.jpg'))
},
{
	name: "Пшеничное поле с кипарисами",
	title: "1889",
	author: "Винсент Ван Гог",
	content: "",
  	category_id:12,
	user_id:2,
	image: File.open(Rails.root.join('public', 'images', 'pic-13.jpg'))
},
{
	name: "Гигиея",
	title: "1901",
	author: "Гюстав Климт",
	content: "",
  	category_id:12,
	user_id:2,
	image: File.open(Rails.root.join('public', 'images', 'pic-14.jpg'))
},
{
	name: "Крик",
	title: "1905",
	author: "Эдвард Мунк",
	content: "Экспрессионизм",
  	category_id:12,
  	user_id: 2,
	image: File.open(Rails.root.join('public', 'images', 'pic-6.jpg'))
}
]



categories.each do |category|
categorik = Category.create(category)
puts category
puts categorik
puts categorik.to_json
puts "Some MAGIC just create a #{ categorik.name } with id #{ categorik.id }!"
end

posts.each do |post|
postik = Post.create!(post)
puts post
puts postik
puts postik.to_json
puts "Some magic just create a #{ postik.name } with id #{ postik.id }!"
end