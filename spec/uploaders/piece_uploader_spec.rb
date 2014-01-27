require 'spec_helper'
# Use Carrierwave's provided test matchers
require 'carrierwave/test/matchers'

describe PieceUploader do
  include CarrierWave::Test::Matchers

  let(:uploader) do
    PieceUploader.new(FactoryGirl.build(:piece))
  end

  let(:path) do
    Rails.root.join('spec/file_fixtures/valid_piece_image.jpg')
  end

  before do
    PieceUploader.enable_processing = true
  end

  after do
    PieceUploader.enable_processing = false
  end

  it 'stores without error' do
    expect(lambda { uploader.store!(File.open(path)) }).to_not raise_error
  end
end
