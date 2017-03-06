require 'rails_helper'

describe Organisation do
  it { should have_db_column :name_of_organisation }
  it { should have_db_column :description_of_organisation }
  it { should have_db_column :organisation_email }
  it { should have_db_column :organisation_phone }
  it { should validate_presence_of :name_of_organisation }
  it { should validate_presence_of :description_of_organisation }
  it { should validate_presence_of :organisation_email }
end
