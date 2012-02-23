RESOURCES_FILTER = lambda do |p|
  
  #Order Management Service
  ['var.ws.das.orderManagementService.endpoint'   => p['order_management_service'],
  #State Management Service
  'var.ws.das.stateManagementService.endpoint'    => p['state_management_service'],

  #Identify Service
  'var.ws.das.identifyService.endpoint'           => p['identify_service'],
  'var.ws.das.identifyService.impl'               => p['identify_service_impl'],

  #Activation Service
  'var.ws.das.activationService.endpoint'         => p['activation_service'],
  'var.ws.das.activationService.impl'             => p['activation_service_impl'],

  #Routing Lookup
  'var.ws.das.routingLookupService.endpoint'      => p['routing_service'],

  #Configuration Service
  'var.ws.das.configurationService.endpoint'      => p['configuration_service'],

  #Customer Service
  'var.ws.das.customerService.endpoint'           => p['customer_service'],

  #Appointment Service
  'var.ws.das.appointmentService.endpoint'        => p['appointment_service'],
  'var.ws.das.appointmentService.impl'            => p['appointment_service_impl'],


  #Notification Service
  'var.ws.das.notificationService.endpoint'       => p['notification_service'],

  #Payment Service
  'var.ws.das.paymentService.endpoint'            => p['payment_service'],
  'var.ws.das.paymentService.impl'                => p['payment_service_impl'],
  'var.ws.das.paymentService.timeout'             => p['payment_service_timeout'],

  #Network Service
  'var.ws.das.networkService.endpoint'            => p['network_service'],
  'var.ws.das.networkService.impl'                => p['network_service_impl'],

  #Pay Per View Service
  'var.ws.das.payPerViewService.endpoint'         => p['pay_per_view_service'],
  'var.ws.das.payPerViewService.impl'             => p['pay_per_view_service_impl'],

  #truck stop service
  'var.ws.das.obdTruckStopService.endpoint'       => p['obd_truckstop_service'],

  #outbound dialer service
  'var.ws.das.outboundDialerService.endpoint'     => p['outbound_dialer_service'],

  #Webservice Timeout Global
  'var.ws.das.timeout'                            => p['web_service_timeout'],

  #divr Routing Service
  'var.ws.das.divrRoutingService.endpoint'        => p['divr_routing_service'],

  #xivr Configuration Service
  'var.ws.das.xivrConfigurationService.endpoint'  => p['xivr_configuration_service'],
  'var.ws.das.divrConfigurationService.impl'      => p['divr_configuration_service_impl'],
  #divr Network Service
  'var.ws.das.divrNetworkService.endpoint'        => p['divr_network_service'],
  'var.ws.das.divrNetworkService.impl'            => p['divr_network_service_impl'],

  #divr Appointment Service
  'var.ws.das.divrAppointmentService.endpoint'        => p['divr_appointment_service'],
  'var.ws.das.divrAppointmentService.impl'            => p['divr_appointment_service_impl'],

  # Prompt Server
  'var.uivr.prompt.server.url'              => p['prompt_server'],

  # Broadcast Messages Server
  'var.uivr.broadcast.messages.server.url'  => p['broadcast_messages_server'],

  # DTA Application
  'app.dta.dtaApplication.endpoint'         => p['dta_application'],

  # DTA DNIS Override
  'app.dta.dtaApplication.dnisOverride'     => p['dta_dnis_override'],

  # Call Disconnecting by Transfer Tag
  'call.disconnect.transfer.number'         => p['call_disconnect'],

  # Call default transfer dial string
  'call.transfer.default.dial.string'       => p['default_transfer_dial_string'],

  # log4j configuration file
  'var.log4j.config'                        => p['log4j_configuration'],

  # File upload location
  'var.payment.confirm.audio.path'          => p['payment_confirm_audio_path'],

  # VIP Settings
  'var.vip.das.service.url'                 => p['vip_das_service_url'],
  'var.vip.debug.mode'                      => p['vip_debug_mode'],
  
  # Misc settings
  'var.learn.ani.enabled'                   => p['learn_ani_enabled'],
  'var.new.app.config.enabled'              => p['new_app_config_enabled'],
  'var.metrics.enabled'                     => p['metrics_enabled'],
  'var.actor.default.timeout'               => p['actor_default_timeout'],
  'var.actor.appointment.timeout'           => p['actor_appointment_timeout'],
  'var.actor.default.thread.pool'           => p['actor_default_thread_pool'],
  'var.app.config.cache.ttl'                => p['app_config_cache_ttl']]

end.call(Buildr.settings.profile)