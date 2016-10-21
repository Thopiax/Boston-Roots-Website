class StaticPagesController < ApplicationController
  def home
    @teamMembers = Member.all
    @contact = Contact.new
  end
end
