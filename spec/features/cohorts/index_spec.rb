require 'rails_helper'

RSpec.describe 'the cohorts index page' do
    it 'displays all cohorts ' do
        be2311 = Cohort.create(name:"BE2311", active:true, length: 7)
        visit "/cohorts/"
        expect(page).to have_content(be2311.name)
    end
end