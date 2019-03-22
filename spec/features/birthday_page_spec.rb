feature "Accepting name and birthday" do
  scenario 'When user enters their name it should be displayed on the next page' do
    visit '/'

    fill_in "name", with: "Sam"
    fill_in "day", with: "19"
    select "March", from: "month"

    click_button ""
    expect(page).to have_text("Sam")
  end
end

feature "Receiving a Happy Birthday message" do
  scenario "When it is the user's birthday, display a message" do
    visit '/'

    fill_in "name", with: "Sam"
    fill_in "day", with: DateTime.now.strftime("%d")
    select "#{DateTime.now.strftime("%B")}", from: "month"

    click_button ""
    expect(page).to have_text("Happy Birthday Sam!")
  end
end

feature "Days until my birthday message" do
  scenario "When it is not the user's birthday, tell them how many days until their birthday" do
    visit '/'

    fill_in "name", with: "Sam"
    fill_in "day", with: DateTime.now.strftime("%d").to_i - 10
    select "#{DateTime.now.strftime("%B")}", from: "month"

    click_button ""
    expect(page).to have_text("Hello Sam, it is 355 days until your birthday")
  end
end
