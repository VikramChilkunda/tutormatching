module OVIRT
 class Cluster < BaseObject
    attr_reader :description, :datacenter, :version

    def initialize(client, xml)
      super(client, xml[:id], xml[:href], (xml/'name').first.text)
      parse_xml_attributes!(xml)
      self
    end

    private

    def parse_xml_attributes!(xml)
      @description = ((xml/'description').first.text rescue nil)
      @version = parse_version(xml)
      @datacenter = Link::new(@client, (xml/'data_center').first[:id], (xml/'data_center').first[:href]) unless (xml/'data_center').empty?
    end

  end
end