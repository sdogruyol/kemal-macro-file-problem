require "kemal"
require "json"
require "kilt/slang"

# Slang doesn't work
get "/slang" do
  name = "serdar"
  age = 27
  money = 130
  render "views/hello_with_content_for.slang", "views/layout_with_yield.slang"
end

# ECR Works
get "/ecr" do
  name = "serdar"
  age = 27
  money = 130
  render "views/hello_with_content_for.ecr", "views/layout_with_yield.ecr"
end

Kemal.run
