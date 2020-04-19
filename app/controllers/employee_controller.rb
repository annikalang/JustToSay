class EmployeeController < ApplicationController

  def profile
    # here, the first created user is selected, this has to be changed since an authentication service is implemented -> Devise)
    @user = User.(where: id = 1)

  end
end
