class StaticPagesController < ApplicationController
  def home
  end

  def team
    @teamMembers = Member.all
  end

end
