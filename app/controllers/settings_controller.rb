class SettingsController < ApplicationController
  def edit
 
    @settings = Settings.build(params[:settings])

  end
  
  def update
    @settings = Settings.build(params[:settings])
  end
  
end
