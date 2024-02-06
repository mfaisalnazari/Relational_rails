require 'rails_helper'

RSpec.describe 'the cohort_students index page' do
    it 'displays all students ' do
        be2311 = Cohort.create(name:"BE2311", active:true, length: 7)
        faisal = be2311.students.create(name:"Faisal", age:24, enrolled:true)
        abdul = Student.create(name:"Abdul", age:14, enrolled:true)

        visit "/cohorts/#{be2311.id}/students"
        expect(page).to have_content(be2311.id)
        expect(page).to have_content(faisal.name)
        expect(page).to have_content(faisal.age)


    end
end