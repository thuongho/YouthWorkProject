require 'rails_helper'

RSpec.describe "employers/edit", :type => :view do
  before(:each) do
    @employer = assign(:employer, Employer.create!(
      :business_name => "MyString"
    ))
  end

  it "renders the edit employer form" do
    render

    assert_select "form[action=?][method=?]", employer_path(@employer), "post" do

      assert_select "input#employer_business_name[name=?]", "employer[business_name]"
    end
  end
end
