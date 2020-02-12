class Request < ApplicationRecord
    belongs_to :collection
    has_many :comments
    default_scope { order(created_at: :asc) }
    after_create :cut_me_some_slack

    def cut_me_some_slack
        text = "A #{self.title} for #{self.collection.name} has been added \n https://api-docs.vinyas.im/try_request/#{self.id}"
        client = Slack::Web::Client.new
        client.chat_postMessage(channel: "#engineering_team", text: text ,username:"Api Documentation")
    end
end
