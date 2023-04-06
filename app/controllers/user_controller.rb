class UserController < ApplicationController
    def index
        users = User.all
        render json: users.to_json(include: [:experiences, :strengths])
    end

    def show_by_name
      name = params[:name]
      users = User.where("name ~* ?", name) # the `~*` operator performs a case-insensitive regex match
      render json: users.first.to_json(include: [:experiences, :strengths])
    end
  end
  