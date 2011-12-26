RSpec::Matchers.define :show_profile do |expected|
  profile_metric = expected.email

  match do |actual|
    actual.has_content?(profile_metric)
  end

  failure_message_for_should do |actual|
    %Q{Expected the page to contain profile content for #{expected}.
  Detected content: \n    #{actual.text.gsub(/\n+/, "\n    ").gsub(/\s*\Z/, '')}
  Expected match: #{profile_metric}}
  end

  failure_message_for_should_not do |actual|
    %Q{Expected the page not to contain profile content for #{expected}.
  Detected content: \n    #{actual.text.gsub(/\n+/, "\n    ").gsub(/\s*\Z/, '')}
  Expected match: #{profile_metric}}
  end
end
