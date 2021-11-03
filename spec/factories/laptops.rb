# == Schema Information
#
# Table name: laptops
#
#  id                     :bigint           not null, primary key
#  color                  :string
#  disk_size              :integer
#  disk_type              :string
#  name                   :string
#  operating_system       :string
#  price                  :float
#  proccessor_name        :string
#  proccessor_serial      :string
#  proccessor_speed       :float
#  ram_capacity           :integer
#  screen_cover_type      :string
#  screen_matrix_type     :string
#  screen_refresh_rate    :integer
#  screen_resolution      :string
#  screen_size            :float
#  video_adapter_company  :string
#  video_adapter_name     :string
#  video_adapter_ram_size :integer
#  video_adapter_type     :string
#  weight                 :float
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  company_id             :bigint
#
# Indexes
#
#  index_laptops_on_company_id  (company_id)
#
FactoryBot.define do
  factory :laptop do
    color { Faker::Color.color_name }

    disk_size { Laptop::DISK_SIZES.sample }
    disk_type { Laptop::DISK_TYPES.sample }

    name { 'Ноутбук' }
    operating_system { Laptop::OPERATING_SYSTEMS.sample }
    price { rand(10_000..150_000) }

    proccessor_name { Laptop::PROCESSOR_NAMES.sample }
    proccessor_serial { '5600u/8550u' }
    proccessor_speed { rand(1.0..5).round(1) }

    ram_capacity { Laptop::RAM_CAPACITIES.sample }

    screen_cover_type { Laptop::SCREEN_COVER_TYPES.sample }
    screen_matrix_type { Laptop::SCREEN_MATRIX_TYPES.sample }
    screen_refresh_rate { Laptop::SCREEN_REFRESH_RATES.sample }
    screen_resolution { Laptop::SCREEN_RESOLUTIONS.sample }
    screen_size { rand(11.0..17).round(1) }

    video_adapter_company { Laptop::VIDEO_ADAPTER_COMPANIES.sample }
    video_adapter_name { 'GeForce GTX 3080/Radeon 560' }
    video_adapter_ram_size { Laptop::VIDEO_ADAPTER_RAM_SIZES.sample }
    video_adapter_type { Laptop::VIDEO_ADAPTER_TYPES.sample }

    weight { rand(1.5..3.5).round(3) }
  end
end
