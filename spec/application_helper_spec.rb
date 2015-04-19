require 'spec_helper'

class TestHelper
  include Helpers
end

describe 'Sinatra helpers' do
  let(:helpers) { TestHelper.new }
 
  it "return £ sign" do
    expect(helpers.currency_sign).to eql('£')
  end

  it "format data to uk" do
    expect(helpers.format_date('2000-03-22')).to eql('22/03/2000')
  end
end