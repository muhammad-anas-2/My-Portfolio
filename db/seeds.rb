3.times do |topic|
  Topic.create!(title: "Topic #{topic}")
end

puts "3 Topics created"

10.times do |blog|
  Blog.create!(
    title: "My Blog Post #{blog}",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque viverra erat id lacus auctor, dignissim aliquam ipsum porta. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Integer pulvinar rhoncus lacus et rhoncus. Phasellus faucibus hendrerit ornare. Fusce non justo eros. Aliquam libero leo, iaculis ac lacinia eu, aliquam pulvinar est. In vitae interdum felis, quis pharetra tortor. Nam sit amet enim augue. Vivamus quis tincidunt nulla. Phasellus feugiat id mi sit amet faucibus. Quisque viverra lorem at ipsum posuere pharetra. Pellentesque laoreet, purus finibus volutpat imperdiet, nisl velit commodo urna, sit amet vehicula nunc nisi vitae purus. Morbi sit amet turpis vel lacus tempus suscipit.",
    topic_id: Topic.last.id
  )
end

puts "10 Blogs were successfully created"

5.times do |skill|
  Skill.create!(
    title: "Rails #{skill}",
    percent_utilised: 15
  )
end

puts "5 Skills were successfully created"

8.times do |portfolio|
  Portfolio.create!(
    title: "Portfolio #{portfolio}",
    subtitle: "Ruby on rails",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus eget tempor dolor. Vivamus consequat nulla a tellus suscipit eleifend. Proin tincidunt rutrum volutpat. Fusce at est fringilla, varius nulla id, fermentum augue. Maecenas a lorem mi. Praesent ut dignissim eros, eget hendrerit neque. Aliquam erat volutpat.",
    main_image: "https://via.placeholder.com/500x400",
    thumb_image: "https://via.placeholder.com/250x200"
  )
end

1.times do |portfolio|
  Portfolio.create!(
    title: "Portfolio #{portfolio}",
    subtitle: "Angular",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus eget tempor dolor. Vivamus consequat nulla a tellus suscipit eleifend. Proin tincidunt rutrum volutpat. Fusce at est fringilla, varius nulla id, fermentum augue. Maecenas a lorem mi. Praesent ut dignissim eros, eget hendrerit neque. Aliquam erat volutpat.",
    main_image: "https://via.placeholder.com/500x400",
    thumb_image: "https://via.placeholder.com/250x200"
  )
end

puts "9 Portfolio items were successfully created"

3.times do |technology|
  Portfolio.last.technologies.create!(
    name: "Technology #{technology}",
  )
end

puts "3 technologies created"
