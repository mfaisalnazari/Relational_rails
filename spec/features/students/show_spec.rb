require 'rails_helper'


RSpec.describe 'the students show page' do
    it 'displays specific student ' do
        be2311 = Cohort.create(name:"BE2311", active:true, length: 7)
        faisal = be2311.students.create(name:"Faisal", age:24, enrolled:true)
        visit "/students/#{faisal.id}"
        expect(page).to have_content(be2311.id)
        expect(page).to have_content(faisal.name)
        expect(page).to have_content(faisal.age)
    end
end