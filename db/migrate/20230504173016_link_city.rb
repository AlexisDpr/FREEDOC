class LinkCity < ActiveRecord::Migration[7.0]
  def change
    add_reference :patients, :city, index: true, foreign_key: true
    add_reference :doctors, :city, index: true, foreign_key: true
    add_reference :appointments, :city, index: true, foreign_key: true
  end
end
