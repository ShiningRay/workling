# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{workling}
  s.version = "0.4.9.94"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Paul Victor"]
  s.date = %q{2012-04-19}
  s.description = %q{easily do background work in rails, without commiting to a particular runner. comes with starling, bj and spawn runners.}
  s.email = %q{paulvictor@gmail.com}
  s.files = ["CHANGES.markdown",
             "VERSION.yml",
             "README.markdown",
             "TODO.markdown",
             "lib/workling/base.rb",
             "lib/workling/clients/amqp_client.rb",
             "lib/workling/clients/amqp_bunny_client.rb",
             "lib/workling/clients/amqp_exchange_client.rb",
             "lib/workling/clients/backgroundjob_client.rb",
             "lib/workling/clients/base.rb",
             "lib/workling/clients/broker_base.rb",
             "lib/workling/clients/memcache_queue_client.rb",
             "lib/workling/clients/memory_queue_client.rb",
             "lib/workling/clients/not_client.rb",
             "lib/workling/clients/not_remote_client.rb",
             "lib/workling/clients/rude_q_client.rb",
             "lib/workling/clients/spawn_client.rb",
             "lib/workling/clients/sqs_client.rb",
             "lib/workling/clients/thread_client.rb",
             "lib/workling/clients/xmpp_client.rb",
             "lib/workling/discovery.rb",
             "lib/workling/remote/invokers/amqp_single_subscriber.rb",
             "lib/workling/remote/invokers/base.rb",
             "lib/workling/remote/invokers/basic_poller.rb",
             "lib/workling/remote/invokers/eventmachine_subscriber.rb",
             "lib/workling/remote/invokers/looped_subscriber.rb",
             "lib/workling/remote/invokers/thread_pool_poller.rb",
             "lib/workling/remote/invokers/threaded_poller.rb",
             "lib/workling/remote.rb",
             "lib/workling/return/store/base.rb",
             "lib/workling/return/store/iterator.rb",
             "lib/workling/return/store/memory_return_store.rb",
             "lib/workling/return/store/starling_return_store.rb",
             "lib/workling/routing/base.rb",
             "lib/workling/routing/class_and_method_routing.rb",
             "lib/workling/routing/static_routing.rb",
             "lib/workling.rb",
             "lib/workling_daemon.rb",
             "contrib/bj_invoker.rb",
             "contrib/starling_status.rb"].flatten
  s.executables = ["workling_client"]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/althea/workling}
  s.rdoc_options = ["--inline-source", "--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{easily do background work in rails, without commiting to a particular runner. comes with starling, bj and spawn runners.}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
