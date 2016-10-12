class StaticPagesController < ApplicationController
  def home
    @teamMembers = Member.all
  end

end
