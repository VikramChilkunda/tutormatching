require 'json'

module SendGrid
  class Content
    attr_accessor :type, :value

    def initialize(type: nil, value: nil)
      @type = type
      @value = value
    end

    def to_json(*)
      {
        'type' => type,
        'value' => value
      }.delete_if { |_, value| value.to_s.strip == '' }
    end
  end
end
