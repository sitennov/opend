require 'rails_helper'

RSpec.describe Advert, type: :model do
  it { should validate_presence_of(:firstname) }
  it { should validate_presence_of(:lastname) }
  it { should validate_presence_of(:age) }
end
