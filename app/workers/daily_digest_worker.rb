class DailyDigestWorker
  include Sidekiq::Worker

  def perform 	
    DigestBuilder.send_daily_email
  end
  
  Sidekiq::Cron::Job.create(
  name: "Send daily digest email",
  cron: "*/6 * * * *",
  klass: "DailyDigestWorker")
end