describe "expense_reports/new.html.erb" do
  before :each do
    assign :expense_report, stub_model(ExpenseReport)
    @vendor_whole = mock_model(Vendor, {:name => "Whole Foods"})
    @vendor_pet = mock_model(Vendor, {:name => "Petaluma Coffee & Tea"})
    Vendor.should_receive(:all).and_return([@vendor_whole, @vendor_pet])
    Member.should_receive(:all).and_return([mock_model(Member, {:name => "Christopher"})])
    render
  end

  it "renders the _form partial" do
    view.should render_template(:partial => "_form", :count => 1)
  end
  
  it "has a receipt_date input field" do
    rendered.should have_selector("select#expense_report_receipt_date_1i")
    rendered.should have_selector("option[value='22']")
    rendered.should have_selector("select#expense_report_receipt_date_2i")
    rendered.should have_selector("select#expense_report_receipt_date_3i")
  end
  
  it "has a dropdown to select the vendor at which the expense was generated" do
    rendered.should have_selector("select#expense_report_vendor_name")
    rendered.should have_selector("option[value='#{@vendor_whole.id}']")
  end
  
  it "has a dropdown to select the member who generated the expense" do
    rendered.should have_selector("select#expense_report_member_name")
    rendered.should contain("Christopher")
  end
  
  it "has a link to add expense_items"
end