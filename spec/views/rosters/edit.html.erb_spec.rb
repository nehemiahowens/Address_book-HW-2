require 'rails_helper'

RSpec.describe "rosters/edit", type: :view do
  before(:each) do
    @roster = assign(:roster, Roster.create!(
      :first_name => "MyString",
      :last_name => "MyString",
      :email => "MyString",
      :cell_phone => "MyString",
      :home_phone => "MyString",
      :work_phone => "MyString"
    ))
  end

  it "renders the edit roster form" do
    render

    assert_select "form[action=?][method=?]", roster_path(@roster), "post" do

      assert_select "input#roster_first_name[name=?]", "roster[first_name]"

      assert_select "input#roster_last_name[name=?]", "roster[last_name]"

      assert_select "input#roster_email[name=?]", "roster[email]"

      assert_select "input#roster_cell_phone[name=?]", "roster[cell_phone]"

      assert_select "input#roster_home_phone[name=?]", "roster[home_phone]"

      assert_select "input#roster_work_phone[name=?]", "roster[work_phone]"
    end
  end
end
