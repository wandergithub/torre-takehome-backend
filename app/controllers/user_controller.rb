class UserController < ApplicationController
    def show_by_name
      name = params[:name]
      users = User.where("name ~* ?", name) # the `~*` operator performs a case-insensitive regex match
      render json: users.first.to_json(include: [:experiences, :strengths])
    end
  end
  