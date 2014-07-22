require 'spec_helper'

describe Kuhsaft::Cms::AdminHelper do
  describe '#render_language_switch?' do
    context 'when there is one language' do
      before do
        allow(I18n).to receive(:available_locales).and_return([:de])
      end

      it 'returns false' do
        expect(helper.render_language_switch?).to be_false
      end
    end

    context 'when there are multiple languages' do
      before do
        allow(I18n).to receive(:available_locales).and_return([:de, :en])
      end

      it 'returns true' do
        expect(helper.render_language_switch?).to be_true
      end
    end
  end
end
