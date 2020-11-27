require 'grape-swagger'

module BookStore
  class Base < Grape::API
    mount BookStore::V1::Books

    add_swagger_documentation(
      api_version: "v1",
      hide_documentation_path: true,
      mount_path: "/api/v1/swagger_doc",
      schemes: 'http',
      hide_format: true
    )
  end
end
