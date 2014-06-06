require 'rails_helper'

describe "static pages" do
  subject { page }

  describe "index page" do
    before { visit_root_path }

    it { should have_content('Student Work Permit') }
  end
end