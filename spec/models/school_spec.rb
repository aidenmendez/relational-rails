require 'rails_helper'

RSpec.describe School do 
  describe 'relationships' do 
    it { should have_many :students }
    end
  end
end 
