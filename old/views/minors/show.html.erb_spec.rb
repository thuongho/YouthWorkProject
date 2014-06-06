require 'rails_helper'

RSpec.describe "minors/show", :type => :view do
  before(:each) do
    @minor = assign(:minor, Minor.create!(
      :FirstName => "First Name",
      :LastName => "",
      :SSN => 1,
      :Age => 2,
      :Grade => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(//)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
  end
end
