# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Video.destroy_all
Category.destroy_all

video_desc =  <<-EOM
  Pizza boy Philip J. Fry awakens in the 31st century after 1,000 years of cryogenic preservation in this animated series. After he gets a job at an interplanetary delivery service, Fry embarks on ridiculous escapades to make sense of his predicament.
EOM

videos = [
  {title: "Family Guy", description: video_desc, large_cover_image_url: "http://dummyimage.com/665x375/000000/00a2ff", small_cover_image_url: "/tmp/family_guy.jpg"},
  {title: "Futurama", description: video_desc, large_cover_image_url: "http://dummyimage.com/665x375/000000/00a2ff", small_cover_image_url: "/tmp/futurama.jpg"},
  {title: "Futurama", description: video_desc, large_cover_image_url: "http://dummyimage.com/665x375/000000/00a2ff", small_cover_image_url: "/tmp/futurama.jpg"},
  {title: "Monk", description: video_desc, large_cover_image_url: "/tmp/monk_large.jpg", small_cover_image_url: "/tmp/monk.jpg"},
  {title: "South Park", description: video_desc, large_cover_image_url: "http://dummyimage.com/665x375/000000/00a2ff", small_cover_image_url: "/tmp/south_park.jpg"}
]

categories = [
  'TV Commedies',
  'TV Dramas',
  'Reality TV'
]

categories.each {
  |cat_name|
  category = Category.create(name: cat_name)
  12.times {
    category.videos.create(videos.sample)
  }
}
