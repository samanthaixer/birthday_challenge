require 'birthday'

describe Birthday do
  it "returns 0 if the birthday is today" do
    user_birthday = DateTime.now.strftime("%d/%B")

    expect(Birthday.days_until_birthday(user_birthday)).to eq 0
  end

  it "returns 5 if the birthday is in 5 days" do
    user_birth_day = DateTime.now.strftime("%d").to_i + 5
    user_birth_month = DateTime.now.strftime("%B")
    user_birthday = "#{user_birth_day}/#{user_birth_month}"

    expect(Birthday.days_until_birthday(user_birthday)).to eq 5
  end

  it "returns a larger number if the birthday was 5 days ago" do
    user_birth_day = DateTime.now.strftime("%d").to_i - 10
    user_birth_month = DateTime.now.strftime("%B")
    user_birthday = "#{user_birth_day}/#{user_birth_month}"

    expect(Birthday.days_until_birthday(user_birthday)).to eq 355
  end
end
