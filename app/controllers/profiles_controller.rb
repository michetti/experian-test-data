class ProfilesController < ApplicationController
  # Examples:
  # /profiles?q[reference_eq]=P160167668166
  # /profiles?q[delinquent_30_days_gteq]=3&q[state_eq]=TX
  #
  # see Ransack predicates here:
  # https://github.com/activerecord-hackery/ransack/wiki/basic-searching
  def index
    @query = Profile.ransack(params[:q])
    render json: @query.result

  end

  # Example:
  # /profiles/P160167668166
  def show
    @profile = Profile.find_by(reference: params[:reference])
    render json: @profile
  end
end
