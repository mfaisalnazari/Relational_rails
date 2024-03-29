require 'rails_helper'

RSpec.describe 'the cohorts show page' do
    it 'displays specific cohorts ' do
        be2311 = Cohort.create(name:"BE2311", active:true, length: 7)
        visit "/cohorts/#{be2311.id}"
        expect(page).to have_content(be2311.name)
    end
end