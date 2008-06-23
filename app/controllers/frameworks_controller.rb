class FrameworksController < ApplicationController

  hobo_model_controller

  # changes require server restart
  auto_actions :all

end
