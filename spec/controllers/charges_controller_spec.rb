require 'spec_helper'

describe ChargesController do
   describe "GET index" do
    it "assigns all charges as @charges" do
      charge = Charge.create! valid_attributes
      get :index, {}, valid_session
      assigns(:charges).should eq([charge])
    end
  end
  
   describe "GET show" do
    it "assigns the requested charge as @charge" do
      charge = Charge.create! valid_attributes
      get :show, {:id => charge.to_param}, valid_session
      assigns(:charge).should eq(charge)
    end
  end
end
