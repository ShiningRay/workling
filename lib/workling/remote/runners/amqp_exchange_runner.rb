require 'workling/remote/runners/base'

#
#  Runs Jobs over a Client. The client should be a subclass of Workling::Client::Base. 
#  Set the client like this: 
#
#      Workling::Remote::Runners::ClientRunner.client = Workling::Clients::AmqpClient.new
#
#  Jobs are dispatched by requesting them on the Client. The Runner takes care of mapping of queue names to worker code. 
#  this is done with Workling::ClassAndMethodRouting, but you can use your own by sublassing Workling::Routing. 
#  Don’t worry about any of this if you’re not dealing directly with the queues.
#
#  There’s a workling-client daemon that uses the configured invoker to retrieve work and dispatching these to the 
#  responsible workers. If you intend to run this on a remote machine, then just check out your rails project 
#  there and start up the workling client like this: ruby script/workling_client run.
#
module Workling
  module Remote
    module Runners
      class AmqpExchangeRunner < Workling::Remote::Runners::Base
        
        # Routing class. Workling::Routing::ClassAndMethodRouting.new by default. 
        cattr_accessor :routing
        @@routing ||= Workling::Routing::ClassAndMethodRouting.new
        
        # The workling Client class. Workling::Clients::MemcacheQueueClient.new by default. 
        cattr_accessor :client
        @@client ||= Workling::Clients::AmqpExchangeClient.new
        
        # enqueues the job onto the client
        def run(clazz, method, options = {})
          
          # neet to connect in here as opposed to the constructor, since the EM loop is
          # not available there. 
          @connected ||= self.class.client.connect

          # NOTE - currently hardcoded to use the default exchange
          self.class.client.request("amq.topic", options)    
          
          return nil
        end
      end
    end
  end
end
