require 'spec_helper'

feature "User creates a piece", %q{
  As an authenticated user
  I want to add a piece
  So that I can attach photos to it
} do

  # Acceptance Criteria:
  # * I must specify a valid title
  # * Optionally I may specify a description
  # * If I specify valid info, the piece is created and persisted
  # * If I specify invalid info, I am presented with an error

  scenario "happy path" do
    count = Piece.count
    user = FactoryGirl.create(:user)
    login(user)
    visit new_piece_path
    fill_in "Title", with: "Butts"
    click_on "Create Piece"

    expect(page).to have_content("Butts")
    expect(Piece.count).to eq(count + 1)
    expect(Piece.last.user_id).to eq(user.id)
  end

end
