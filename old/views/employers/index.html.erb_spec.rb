require 'rails_helper'

RSpec.describe "employers/index", :type => :view do
  before(:each) do
    assign(:employers, [
      Employer.create!(
        :business_name => "Business Name"
      ),
      Employer.create!(
        :business_name => "Business Name"
      )
    ])
  end

  it "renders a list of employers" do
    render
    assert_select "tr>td", :text => "Business Name".to_s, :count => 2
  end
end
