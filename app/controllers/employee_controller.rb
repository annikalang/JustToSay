class EmployeeController < ApplicationController
  def profile
    # here, the first created user is selected, this has to be changed when an authentication service is implemented -> Devise)
    @user = Employee.where(id: 1)
    @sent_appreciations = Appreciation.where(employee_id: @user.id)
    @received_appreciations = Appreciation.where()
  end
end
