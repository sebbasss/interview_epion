require 'rails_helper'

RSpec.describe CheckIn, type: :model do
  it { should belong_to :patient }
  it {should have_one :screener}
end
