require './lib/base'
require './lib/coinbase'

module Api
    class Wrapper < Base
        %w[
            coinbase
        ].each do |api|
            define_method(api.to_sym) do
                Object.const_get("Api::#{klassify(api)}").new(@options).request
            end
        end

        def klassify(name)
            name.split('_').collect(&:capitalize).join
end