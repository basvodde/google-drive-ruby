
require 'google_drive'

describe "GoogleDrive::Worksheet" do
  
  before (:each) {
    @session = mock("GoogleDrive Session")
    @spreadsheet = mock("GoogleDrive Spreadsheet")
  }
  
  subject { 
    GoogleDrive::Worksheet.new(@session, @spreadsheet, "url")
  }
  
  def empty_worksheet
    doc = mock("html_doc")
    element = mock("element")
    @session.should_receive(:request).and_return(doc)
    doc.should_receive(:css).and_return(element, element, [element], [])
    element.should_receive(:text).and_return("0", "0", "title")
  end
  
  it "is empty when calling the empty_worksheet helper" do
    empty_worksheet
    subject[1, 1].should == ""
  end
  
end
