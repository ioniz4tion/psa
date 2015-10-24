# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Admin.create!([
  {email: "maxwelle.1122@gmail.com", password: "testtest"},
  {email: "andy.john.jakubek@gmail.com", password: "testtest"},
  {email: "iqover9000@gmail.com", password: "testtest"},
  {email: "zackh1998@gmail.com", password: "testtest"}
])

About.create!([
  {image_file_name: "", image_content_type: "image/jpeg", image_file_size: 35291, image_updated_at: "2014-12-15 06:15:15", description: "Parker Piedmont is a junior at Lake City High School in Coeur d'Alene, Idaho, and this is his second year as a member of Business Professionals of America. He is glad to have become a part of BPA and has significantly improved his knowledge of Web site design, as well as his teamwork skills. Parker also participates in the Lake City High School cross-country and track teams, as well as multiple bands at the school. He is currently enrolled in an Honors class and 5 AP classes, and he enjoys learning about math and science.", name: "Parker Piedmont", email: "iqover9000@gmail.com", phone: "+1 208 446 8542"},
  {image_file_name: "", image_content_type: "image/jpeg", image_file_size: 48963, image_updated_at: "2014-12-15 06:17:13", description: "Andy Jakubek is a junior at Lake City High School in Coeur d'Alene, Idaho, and this is his second year as a member of Business Professionals of America. He loves BPA and has learned a lot of new skills in technology and leadership. Andy is also the President of the Lake City High School Key Club. He takes all Honors and AP classes, and enjoys all his activities very much.", name: "Andy Jakubek", email: "andy.john.jakubek@gmail.com", phone: "208-699-5660"},
  {image_file_name: "", image_content_type: "image/jpeg", image_file_size: 22491, image_updated_at: "2014-12-15 06:16:23", description: "Zack Holbrook is a junior at Lake City High School in Coeur d'Alene, Idaho, and he has been in Business Professionals of America for 3 years. Through it he has learned more about technology and business. Zack is also a member of the Lake City High School cross-country and track teams. He takes several Honors and AP classes and enjoys learning about World History.", name: "Zack Holbrook", email: "zackh1998@gmail.com", phone: "+1 208 661 0783"},
  {image_file_name: "", image_content_type: "image/jpeg", image_file_size: nil, image_updated_at: nil, description: "Maxwell Evans is a junior at Lake City High School in Coeur d'Alene, Idaho, and this is his first year in Business Professionals of America. Through it he has learned more about technology and how to be an effective leader. Max is also a member of the Lake City High School cross-country and track teams. He takes several Honors and AP classes, and is an active citizen of the city and school.", name: "Maxwell Evans", email: "maxwelle.1122@gmail.com", phone: "208-819-8372"}
])