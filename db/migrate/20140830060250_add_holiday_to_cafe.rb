class AddHolidayToCafe < ActiveRecord::Migration
  def change
    add_column :cafes, :mon_holiday, :boolean
    add_column :cafes, :tue_holiday, :boolean
    add_column :cafes, :wed_holiday, :boolean
    add_column :cafes, :thu_holiday, :boolean
    add_column :cafes, :fri_holiday, :boolean
    add_column :cafes, :sat_holiday, :boolean
    add_column :cafes, :sun_holiday, :boolean
  end
end
