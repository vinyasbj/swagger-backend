class Request < ApplicationRecord
    belongs_to :collection
    has_many :comments
    default_scope { order(created_at: :asc) }
    # after_create :cut_me_some_slack

    # def cut_me_some_slack
    #     text = "A #{self.title} for #{self.collection.name} has been added \n https://api-docs.vinyas.im/try_request/#{self.id}"
    #     notifier = Slack::Notifier.new ENV['SLACK_WEBHOOK_URL']
    #     notifier.ping text
    # end

    def self.search(search)
        requests = self.includes(:collection).where("lower(title) LIKE ?","%#{search.downcase}%")
        return requests
    end
end
