OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do  
  provider :facebook, ENV['1441975659408143'], ENV['0c3b5dfdfec1aea1528da9dd581a0cff']
  provider :twitter, ENV['fTyGpTq3LQeCEGXD8IzxcMqPK'], ENV['uNRW2Yb4EwGMHMyShh21dMoa6RmU5K5kdjCe5JMgSn1g6XLt7N']
end