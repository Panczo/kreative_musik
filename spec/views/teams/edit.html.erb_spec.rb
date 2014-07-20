require 'rails_helper'

RSpec.describe "teams/edit", :type => :view do
  before(:each) do
    @team = assign(:team, Team.create!(
      :nazwa => "MyString",
      :opis => "MyText"
    ))
  end

  it "renders the edit team form" do
    render

    assert_select "form[action=?][method=?]", team_path(@team), "post" do

      assert_select "input#team_nazwa[name=?]", "team[nazwa]"

      assert_select "textarea#team_opis[name=?]", "team[opis]"
    end
  end
end
