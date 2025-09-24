class ListingsController < ApplicationController
  def create
    new_listing = Listing.new

    new_listing.title = params.fetch("title_param")
    new_listing.body = params.fetch("body_param")
    new_listing.expires_on = params.fetch("expires_on_param")
    new_listing.board_id = params.fetch("board_id_param")

    new_listing.save

    if new_listing.id != nil
      # redirect to the parent board's details page
      redirect_to("/boards/#{new_listing.board_id}", { :notice => "Listing created successfully." })
    else
      redirect_to("/boards/#{new_listing.board_id}", { :alert => new_listing.errors.full_messages.to_sentence })
    end
  end
end
