# Install hook code here
puts "Copying files..."
dir = "javascripts"
["blackbird.js"].each do |js_file|
	dest_file = File.join(Rails.root, "public", dir, js_file)
	src_file = File.join(File.dirname(__FILE__) , dir, js_file)
	FileUtils.cp_r(src_file, dest_file)
end

dir = "stylesheets"
["blackbird.css"].each do |css_file|
	dest_file = File.join(Rails.root, "public", dir, css_file)
	src_file = File.join(File.dirname(__FILE__) , dir, css_file)
	FileUtils.cp_r(src_file, dest_file)
end

dir = "images"
["blackbird_panel.png", "blackbird_icons.png"].each do |img_file|
	dest_file = File.join(Rails.root, "public", dir, img_file)
	src_file = File.join(File.dirname(__FILE__) , dir, img_file)
	FileUtils.cp_r(src_file, dest_file)
end
puts "Images were copied to your applications public/images folder, if you wish to change that, remember to change any background-image reference on the blackbird.css file."

puts "Files copied - Installation complete!"