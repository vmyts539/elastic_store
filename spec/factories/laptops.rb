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
#  proccessor_speed       :string
#  ram_capacity           :integer
#  scree_matrix_type      :string
#  screen_cover_type      :string
#  screen_refresh_rate    :string
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
    
  end
end
