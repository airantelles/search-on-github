FactoryBot.define do
  factory :repository do
    name { "MyString" }
    description { "MyText" }
    forks { 1 }
    stargazers { 1 }
    url { "MyString" }
    owner_avatar { "MyString" }
    owner_name { "MyString" }
    clone_url { "MyString" }
    default_branch { "MyString" }
    homepage { "MyString" }
    external_id { 1 }
    language
  end
end
