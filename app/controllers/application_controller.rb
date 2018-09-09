class ApplicationController < ActionController::Base

    before_action :parse_request
    skip_before_action :verify_authenticity_token


    private
        def parse_request
            begin
                @body = params.to_json
            rescue Encoding::UndefinedConversionError
                return_error_code(400)
            end
        end

        def return_error_code(code)
            respond_to do |format|
                format.any { head :bad_request }
            end
        end

end
