# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

p "Creating companies"
Laptop::COMPANIES.each do |company|
  FactoryBot.create(:company, name: company)
end

laptops = YAML.load_file("#{Rails.root}/db/data/laptops.yaml")['laptops']
p "Creating laptops"
laptops.each do |l|
  FactoryBot.create(:laptop,
    name: ,
    company: ,
    disk_size: ,
    disk_type: ,
    operating_system: ,
    price: ,
    proccessor_name: ,
    proccessor_serial: ,
    proccessor_speed: ,
    ram_capacity: ,
    scree_matrix_type: ,
    screen_cover_type: ,
    screen_refresh_rate: ,
    screen_resolution: ,
    screen_size: ,
    video_adapter_company: ,
    video_adapter_name: ,
    video_adapter_ram_size: ,
    video_adapter_type: ,
  )
end
