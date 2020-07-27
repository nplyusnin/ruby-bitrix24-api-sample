require 'httparty'

module BitrixApi
  class Order
    def self.api_uri
      'https://b24-qyqz3j.bitrix24.ru/rest/1/9u9u6fvy85mw8ptr/sale.order.add'
    end

    def initialize(params)
      @params = params
    end

    def call
      response = HTTParty.post(Order.api_uri, body: {
        fields: {
          lid: 's1',
          userId: 1,
          orderTopic: '',
          responsibleId: 1,
          userDescription: '',
          currency: 'rb',
          personTypeId: 1
        }
      })

      puts response.body
    end
  end
end