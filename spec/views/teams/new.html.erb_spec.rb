require 'rails_helper'

RSpec.describe "teams/new", :type => :view do
  before(:each) do
    assign(:team, Team.new(
      :nazwa => "MyString",
      :opis => "MyText"
    ))
  end

  it "renders new team form" do
    render

    assert_select "form[action=?][method=?]", teams_path, "post" do

      assert_select "input#team_nazwa[name=?]", "team[nazwa]"

      assert_select "textarea#team_opis[name=?]", "team[opis]"
    end
  end
end
