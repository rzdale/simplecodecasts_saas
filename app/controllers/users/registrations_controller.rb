class Users::RegistrationsController < Devise::RegistrationsController

  def create
    super do |resource|
      # in the future I would hope to do something more like this:
      #
      # resource.save_with_plan(params[:plan])
      #
      # and deal with how to save it inside that method
      binding.pry
      if params[:plan]
        resource.plan_id = params[:plan]

        if resource.plan_id == '2'
          resource.save_with_payment
        else
          resource.save
        end
      end
    end
  end
end