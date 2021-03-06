module Onlinenic
  module Wrapper

    #Response XML Format
    #
    # <?xml version="1.0"?>
    # <response>
    #   <category>CATEGORY</category>      Category information.
    #   <action>ACTION</action>            Action type.
    #   <code>CODE</code>                  Please refer to codes explanation.
    #   <msg>MSG</msg>                     Please refer to codes explanation.
    #   <value>VALUE</value>               Error messages explaining the failure and returns "no value" if it is successful.
    #   <resData>                          Data returned.
    #     <data name=”DATA1”>VALUE1</data> Data1. Please see the value1.
    #     <data name=”DATA2”>VALUE2</data> Data2. Please see the value2.
    #     ......                           ......
    #     <data name=”DATAn”>VALUEn</data> ......
    #   </resData>
    #   <cltrid>CLTRID</cltrid>            Order number which is generated by customer and must be unique.
    #   <svtrid>SVTRID</svtrid>            svtrid = cltrid + "-API-SRV"
    #   <chksum>CHKSUM</chksum>            chksum = md5(customer_id + md5(password) + cltrid + svtrid + code + msg + value)
    # </response>
    class Response

      require 'rubygems'
      require 'nokogiri'

      NODES = [:category, :action, :code, :msg, :value, :cltrid, :svtrid, :chksum]
      CODES = {
              :success => 1000..1999
      }

      attr_reader :response

      def initialize(conn)
        @response = Nokogiri::XML(conn.waitfor(/<\/response>/))
      end

      #defines methods to get xml nodes. Ex: Onlinenic::Connection.new.category #=> "client"
      NODES.each do |n|
        define_method(n) { @response.xpath("//response//#{n}/text()").to_s }
      end

      #checks the "code" node if it is between 1000 and 1999. returns boolean.
      def success?
        CODES[:success].include?(code.to_i)
      end

      def get_data(name)
        @response.xpath("//response//resData//data[@name='#{name}']/text()").to_s
      end

    end
  end
end
