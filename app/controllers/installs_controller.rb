class InstallsController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def index
    @installs = Install.all.order(:id)
  end

  def create
    @install = Install.new

    respond_to do |format|
      if @install.save
        format.html { render inline: "Success. It is #{Install.count} installs now!" }
      end
    end
  end
end
