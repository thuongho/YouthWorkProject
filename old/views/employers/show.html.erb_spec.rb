require 'rails_helper'

RSpec.describe "employers/show", :type => :view do
  before(:each) do
    @employer = assign(:employer, Employer.create!(
      :business_name => "Business Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Business Name/)
  end
end
