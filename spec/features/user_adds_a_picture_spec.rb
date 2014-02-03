require 'spec_helper'

feature "User adds a picture", %q{
  As an authenticated user
  I want to add a picture
  So that I can save and share it
} do

  # Acceptance Criteria:
  # * I must specify a valid image file from my harddrive (jpg, png or gif under 5 MB)
  # * If I specify a valid file, the image is uploaded and displayed
  # * If I fail to specify a valid file, I am presented with an error

  scenario "happy path" do
    piece = FactoryGirl.create(:piece)
    visit new_piece_image_path(piece)
    attach_file 'Picture', Rails.root.join('spec/file_fixtures/valid_piece_image.jpg')
    click_button 'Add'
    expect(page).to have_content('successfully')
  end

  # context "with valid input" do
  #   it "records a learning" do
  #     count = Learning.all.count
  #     user = FactoryGirl.create(:user)
  #     set_omniauth(user)
  #     visit root_path
  #     click_on 'Sign In'
  #     visit new_learning_path
  #     fill_in "I learned", with: "Lorem ipsum."
  #     fill_in "Url", with: "http://www.example.com"
  #     click_on "Share"

  #     expect(page).to have_content("Lorem ipsum.")
  #     expect(Learning.all.count).to eq(count + 1)
  #     expect(Learning.last.user).to eq(user)
  #   end

  # end

end
