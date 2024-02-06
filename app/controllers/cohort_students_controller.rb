class CohortStudentsController < ApplicationController
    def index
      @cohort = Cohort.find(params[:id])
      @students = @cohort.students
    end
end
 
  
  