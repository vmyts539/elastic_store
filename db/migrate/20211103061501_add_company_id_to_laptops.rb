class AddCompanyIdToLaptops < ActiveRecord::Migration[6.1]
  def change
    add_reference :laptops, :company
  end
end
