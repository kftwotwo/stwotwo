require 'rails_helper'

describe Opportunity do
  it { should have_db_column :opportunity_name }
  it { should have_db_column :opportunity_description }
  it { should have_db_column :opportunity_solution }
  it { should have_db_column :opportunity_solution_description }

  it { should validate_presence_of :opportunity_name }
  it { should validate_presence_of :opportunity_description }
  it { should validate_presence_of :opportunity_solution }
  it { should validate_presence_of :opportunity_solution_description }
end
