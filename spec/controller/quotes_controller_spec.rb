require 'rails_helper'

RSpec.describe QuotesController, type: :controller do 

    describe 'template rendering' do 
        it 'renders the index template' do 
            get :index
            expect(response).to render_template('index')
        end

        it 'renders the new template' do 
            get :new
            expect(response).to render_template('new')
        end
     end

     describe 'new quote appropriate behaviours' do 

        it 'should redirect to index with appropriate quote' do
            post 'create', :params => { :quote => { quotation: 'quotation123' } }
            expect(response).to redirect_to(:root)
        end

        it 'should remain at new when quote not valid' do 
            post 'create', :params => { :quote => { quotation: nil } }
            expect(response).to render_template(:new)
        end
    end 


end