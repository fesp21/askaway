require 'rails_helper'

describe Party, :type => :model do
  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to validate_uniqueness_of(:name) }
  it { is_expected.to validate_presence_of(:auth_statement) }
  it { is_expected.to have_many(:memberships) }
  it { is_expected.to have_many(:members).through(:memberships).source(:user) }
end
