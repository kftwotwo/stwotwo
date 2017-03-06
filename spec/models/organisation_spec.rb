require 'rails_helper'

describe Organisation do
  it { should have_db_column :name_of_organisation }
  it { should have_db_column :description_of_organisation }
  it { should have_db_column :organisation_email }
  it { should have_db_column :organisation_phone }
  it { should have_db_column :organisation_website }
  it { should have_db_column :street }
  it { should have_db_column :city }
  it { should have_db_column :state }
  it { should have_db_column :zip_code }
  it { should have_db_column :country }

  it { should validate_presence_of :name_of_organisation }
  it { should validate_presence_of :description_of_organisation }
  it { should validate_presence_of :organisation_email }
  it { should validate_presence_of :street }
  it { should validate_presence_of :city }
  it { should validate_presence_of :state }
  it { should validate_presence_of :zip_code }
  it { should validate_presence_of :country }

end
