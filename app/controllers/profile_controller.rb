# frozen_string_literal: true

class ProfileController < ApplicationController
  def index
    @profile = Profile.find_or_initialize_by(user_id: User.last.id)
  end

  def details
  end

  def update
    @profile = Profile.find_or_initialize_by(user_id: User.last.id)
    if @profile.update(profile_params)
      flash[:notice] = 'Profile Updated'
    else
      flash[:alert] = 'Profile could not be updated'
    end

    redirect_back_or_to profile_path
  end

  private

  def profile_params
    params.require(:profile).permit(:first_name, :last_name)
  end
end
