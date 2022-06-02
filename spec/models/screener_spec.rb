require 'rails_helper'

RSpec.describe Screener, type: :model do
  it { should belong_to :check_in }
end
