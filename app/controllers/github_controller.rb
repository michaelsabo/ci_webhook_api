
class GithubController < ApplicationController

    def build_complete
        debug_response
        head :ok
    end

    def pull_request
        debug_response
        head :ok
    end

    private
        def debug_response
            STDOUT.puts @body
        end

end
