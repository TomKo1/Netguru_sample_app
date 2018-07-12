require 'rails_helper'

RSpec.describe Quote, type: :model do 

    describe 'validations' do 
        it { should validate_presence_of(:quotation) }
        it { should validate_length_of(:quotation).is_at_least(5).is_at_most(255) } 
    end
    
end