# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

["Business", "Design", "Technology", "Soft Skills", "Miscellaneous"].each do |name|
  next if Category.where(:name => name).first

  Category.create(:name => name, :initiative => title)
end

Initiative.create(:title => title, :description => description)