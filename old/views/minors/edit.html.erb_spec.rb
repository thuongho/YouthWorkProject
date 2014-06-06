require 'rails_helper'

RSpec.describe "minors/edit", :type => :view do
  before(:each) do
    @minor = assign(:minor, Minor.create!(
      :FirstName => "MyString",
      :LastName => "",
      :SSN => 1,
      :Age => 1,
      :Grade => 1
    ))
  end

  it "renders the edit minor form" do
    render

    assert_select "form[action=?][method=?]", minor_path(@minor), "post" do

      assert_select "input#minor_FirstName[name=?]", "minor[FirstName]"

      assert_select "input#minor_LastName[name=?]", "minor[LastName]"

      assert_select "input#minor_SSN[name=?]", "minor[SSN]"

      assert_select "input#minor_Age[name=?]", "minor[Age]"

      assert_select "input#minor_Grade[name=?]", "minor[Grade]"
    end
  end
end
