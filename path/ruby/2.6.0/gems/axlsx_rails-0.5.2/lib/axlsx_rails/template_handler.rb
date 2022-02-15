# frozen_string_literal: true

require 'action_view'
require 'stringio'

module ActionView
  module Template::Handlers
    class AxlsxBuilder

      def default_format
        Rails.version.to_f >= 5 ? Mime[:xlsx] : Mime::XLSX
      end

      def call(template)
        builder = StringIO.new
        builder << "require 'axlsx';"
        builder << "xlsx_author = defined?(xlsx_author).nil? ? nil : xlsx_author;"
        builder << "xlsx_created_at = defined?(xlsx_created_at).nil? ? nil : xlsx_created_at;"
        builder << "xlsx_use_shared_strings = defined?(xlsx_use_shared_strings).nil? ? nil : xlsx_use_shared_strings;"
        builder << "xlsx_package = Axlsx::Package.new("
        builder << ":author => xlsx_author,"
        builder << ":created_at => xlsx_created_at,"
        builder << ":use_shared_strings => xlsx_use_shared_strings);"
        builder << template.source
        builder << ";xlsx_package.to_stream.string;"
        builder.string
      end
    end
  end
end
