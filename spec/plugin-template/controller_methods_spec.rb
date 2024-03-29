require 'spec_helper'

module PluginTemplate
  describe Plugin do
    class TestController < Adhearsion::CallController
      include PluginTemplate::ControllerMethods
    end

    let(:mock_call) { stub_everything 'Call', :originating_voip_platform => :punchblock }
    
    subject do
      TestController.new mock_call
    end

    describe "#greet" do
      it "greets with the correct parameter" do
        subject.expects(:play).once.with("Hello, Luca")
        subject.greet "Luca"
      end
    end

  end
end
