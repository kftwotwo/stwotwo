require 'rails_helper'

describe Lead do
  it { should have_db_column :first_name }
  it { should have_db_column :last_name }
  it { should have_db_column :phone_number }
  it { should have_db_column :email }
  it { should validate_presence_of :first_name }
  it { should validate_presence_of :last_name }
  it { should validate_presence_of :phone_number }
  it { should validate_presence_of :email }
end
