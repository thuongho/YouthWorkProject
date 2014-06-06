require 'rails_helper'

RSpec.describe "employers/new", :type => :view do
  before(:each) do
    assign(:employer, Employer.new(
      :business_name => "MyString"
    ))
  end

  it "renders new employer form" do
    render

    assert_select "form[action=?][method=?]", employers_path, "post" do

      assert_select "input#employer_business_name[name=?]", "employer[business_name]"
    end
  end
end
