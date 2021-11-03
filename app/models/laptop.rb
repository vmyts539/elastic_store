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
class Laptop < ApplicationRecord
  COMPANIES = ['Apple', 'HP', 'Acer', 'Asus', 'Dell', 'MSI', 'Xiaomi', 'Lenovo']

  DISK_SIZES = [120, 128, 240, 256, 480, 512, 1024, 2048]
  DISK_TYPES = ['SSD', 'HDD']

  OPERATING_SYSTEMS = ['DOS', 'Windows', 'Linux', 'MacOs']

  PROCESSOR_NAMES = [
    'AMD Ryzen 3', 'AMD Ryzen 5', 'AMD Ryzen 7', 'AMD Ryzen 9',
    'Intel Core i3', 'Intel Core i5', 'Intel Core i7', 'Intel Core i9'
  ]

  RAM_CAPACITIES = [4, 6, 8, 16, 32, 64]

  SCREEN_COVER_TYPES = ['матовий', 'глянцевий', 'антиблікове']
  SCREEN_MATRIX_TYPES = [
    'AMOLED', 'IPS', 'Retina', 'OLED', 'VA', 'SVA', 'WVA', 'TN+film', 'UWVA'
  ]
  SCREEN_REFRESH_RATES = [60, 90, 120, 144, 165, 240, 300, 360]
  SCREEN_RESOLUTIONS = [
    '1366x768', '1600x900', '1920x1080'
  ]

  VIDEO_ADAPTER_COMPANIES = ['Intel', 'AMD', 'nVidia']
  VIDEO_ADAPTER_RAM_SIZES = [2, 4, 6, 8, 12, 16]
  VIDEO_ADAPTER_TYPES = ['Дискретна', 'Інтегрована']

  belongs_to :company

  validate :disk_size, inclusion: { in: DISK_SIZES }
  validate :disk_type, inclusion: { in: DISK_TYPES }

  validate :operating_system, inclusion: { in: OPERATING_SYSTEMS }

  validate :proccessor_name, inclusion: { in: PROCESSOR_NAMES }
  validate :proccessor_speed, inclusion: { in: 1.0..5 }

  validate :ram_capacity, inclusion: { in: RAM_CAPACITIES }

  validate :screen_cover_type, inclusion: { in: SCREEN_COVER_TYPES }
  validate :screen_matrix_type, inclusion: { in: RAM_CAPACITIES }
  validate :screen_refresh_rate, inclusion: { in: SCREEN_REFRESH_RATES }
  validate :screen_resolution, inclusion: { in: SCREEN_RESOLUTIONS }
  validate :screen_size, inclusion: { in: 11.0..17 }

  validate :video_adapter_company, inclusion: { in: VIDEO_ADAPTER_COMPANIES }
  validate :video_adapter_ram_size, inclusion: { in: VIDEO_ADAPTER_RAM_SIZES }
  validate :video_adapter_type, inclusion: { in: VIDEO_ADAPTER_TYPES}

  validate :weight, inclusion: { in: 1.5..3.5 }

  validate :color,
            :disk_size,
            :disk_type,
            :name,
            :operating_system,
            :price,
            :proccessor_name,
            :proccessor_serial,
            :proccessor_speed,
            :ram_capacity,
            :screen_cover_type,
            :screen_matrix_type,
            :screen_refresh_rate,
            :screen_resolution,
            :screen_size,
            :video_adapter_company,
            :video_adapter_name,
            :video_adapter_ram_size,
            :video_adapter_type,
            :weight, presence: true
end

