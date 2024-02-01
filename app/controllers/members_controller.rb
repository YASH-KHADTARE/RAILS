class MembersController < ApplicationController
  def all_members
    @all_members = Member.all
end
