# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Product.delete_all
#
Product.create(title: 'Programing Ruby 1.9',
    description:
      %{<p>
          Ruby is the faster growing and most exciting synamic language
          out there. If you need to get working programs delivered fast,
          you should add Ruby to your toolbox.
      </p>},
    image_url: 'rails.png',
    price: 49.95) 