require 'rails_helper'

describe "Static Pages" do 

  subject { page }

  describe "index page" do
    before { visit root_path }

    it { should have_content('Student Work Permit') }
    it { should have_link("Enter Age", href: new_minor_path) }
    it { should have_content('Age') }
  end
end