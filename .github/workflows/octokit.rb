require 'octokit'
# !!! DO NOT EVER USE HARD-CODED VALUES IN A REAL APP !!!
# Instead, set and test environment variables, like below
client = Octokit::Client.new :access_token => ENV['MY_PERSONAL_TOKEN']
client.issue_comments("ManiSakhi/PR-comment", 1).each do |comment|
  username = comment[:user][:login]
  post_date = comment[:created_at]
  content = comment[:body]
 puts "#{username} made a comment on #{post_date}. It says:\n'#{content}'\n"
end
