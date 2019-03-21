feature "Accepting name and birthday" do
  scenario 'When user enters their name it should be displayed on the next page' do
    visit '/'

    fill_in "name", with: "Sam"
    fill_in "day", with: "19"
    fill_in "month", with: "March"

    click_button "Go!"
    expect(page).to have_text("Sam")
  end
end

feature "Receiving a Happy Birthday message" do
  scenario "When it is the user's birthday, display a message" do
    visit '/'

    fill_in "name", with: "Sam"
    fill_in "day", with: DateTime.now.strftime("%d")
    fill_in "month", with: DateTime.now.strftime("%m")

    click_button "Go!"
    expect(page).to have_text("Happy Birthday Sam!")
  end
end
