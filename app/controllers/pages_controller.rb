class PagesController < ApplicationController
  def contact
  end

  def about
    # @members = Member.all
    @members = ['julien', 'thanh', 'fatma', 'dimitri', 'damien']
    if params[:member]
      @members = @members.select { |member| member.start_with?(params[:member]) }
    end
  end

  def home
  end
end
