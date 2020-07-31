require "pry"
class NotifySlack 
    def initiailize(request)
        @request = request
    end
    

    def execute(request)
        text = "A #{request.title} for #{request.collection.name} has been added \n https://api-docs.vinyas.im/try_request/#{request.id}"

        notifier = Slack::Notifier.new ENV['SLACK_WEBHOOK_URL']
        notifier.ping text
    end
end