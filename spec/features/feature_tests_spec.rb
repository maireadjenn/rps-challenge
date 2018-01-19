feature 'Testing load page' do
  scenario 'can run app and check page content' do
    visit('/')
    expect(page).to have_content "Rock * Paper * Scissors"
  end
end

feature 'Testing name is assigned' do
  scenario 'can enter name, submit and check page content' do
    visit('/')
    fill_in 'player_name', with: 'Jennifer'
    click_button "Let's play!!"
    expect(page).to have_content "Welcome, Jennifer!  What's your move?"
  end
end

# feature 'moves are available to make' do
#   scenario 'move options include rock' do
#     visit('/')
#     fill_in 'player_name', with: 'Jennifer'
#     click_button "Let's play!!"
#     expect(page).to have_button "ROCK"
#   end
# end
#
# feature 'moves are available to make' do
#   scenario 'move options include paper' do
#     visit('/')
#     fill_in 'player_name', with: 'Jennifer'
#     click_button "Let's play!!"
#     expect(page).to have_button "PAPER"
#   end
# end
#
# feature 'moves are available to make' do
#   scenario 'move options include scissors' do
#     visit('/')
#     fill_in 'player_name', with: 'Jennifer'
#     click_button "Let's play!!"
#     expect(page).to have_button "SCISSORS"
#   end
# end