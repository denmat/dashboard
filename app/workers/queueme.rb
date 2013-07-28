class Queueit
  include Sidekiq::Worker
  
  def perform(name, count)
    "Doing lots of hard work #{name}, #{count}"
  end
end