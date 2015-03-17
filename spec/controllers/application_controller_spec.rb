require 'spec_helper'

RSpec.describe ApplicationController, type: :controller do
  controller do
    def index
      head :ok
    end
  end

  describe '#index' do
    before { get :index }
    it { expect(response.status).to eq 200 }

    describe 'assigns[:array]' do
      it { expect(assigns[:array]).to eq %w(prepend_around prepend_before before around append_before append_around append_after after prepend_after) }
    end
  end
end
