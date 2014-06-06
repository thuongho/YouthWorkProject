require 'rails_helper'

RSpec.describe "minors/index", :type => :view do
  before(:each) do
    assign(:minors, [
      Minor.create!(
        :FirstName => "First Name",
        :LastName => "",
        :SSN => 1,
        :Age => 2,
        :Grade => 3
      ),
      Minor.create!(
        :FirstName => "First Name",
        :LastName => "",
        :SSN => 1,
        :Age => 2,
        :Grade => 3
      )
    ])
  end

  it "renders a list of minors" do
    render
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
