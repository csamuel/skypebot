
CORE_VERSION = VERSION_NUMBER
CORE_GROUP = "com.comcast.xivr"
CORE = struct(
    :domain      => "#{CORE_GROUP}:xivr-core-domain:jar:#{CORE_VERSION}",
    :assembers   => "#{CORE_GROUP}:xivr-core-assemblers:jar:#{CORE_VERSION}",
    :util        => "#{CORE_GROUP}:xivr-core-util:jar:#{CORE_VERSION}",
    :annotations => "#{CORE_GROUP}:xivr-core-annotations:jar:#{CORE_VERSION}",
    :aspects     => "#{CORE_GROUP}:xivr-core-aspects:jar:#{CORE_VERSION}",
    :component   => "#{CORE_GROUP}:xivr-core-component:jar:#{CORE_VERSION}",
    :handlers    => "#{CORE_GROUP}:xivr-core-handlers:jar:#{CORE_VERSION}",
    :das_clients => "#{CORE_GROUP}:xivr-core-das-clients:jar:#{CORE_VERSION}",
    :cxf_clients => "#{CORE_GROUP}:xivr-core-cxf-clients:jar:#{CORE_VERSION}",
    :das_stubs   => "#{CORE_GROUP}:xivr-core-das-stubs:jar:#{CORE_VERSION}")


SCALA_VERSION = "2.9.0-1"
SCALAJ = "org.scalaj:scalaj-collection_#{SCALA_VERSION}:jar:1.1"

SCALA_LIBRARY = ["org.scala-lang:scala-library:jar:#{SCALA_VERSION}"]

AKKA =  group('akka-actor', 'akka-slf4j',
              :under => 'se.scalablesolutions.akka', :version => '1.1.3')

LIQUIBASE = "org.liquibase:liquibase-core:jar:2.0.0", "mysql:mysql-connector-java:jar:5.1.14"

SPRING_VERSION = '3.0.6.RELEASE'
SPRING_GROUP = 'org.springframework'
SPRING = struct(
    :beans           => "#{SPRING_GROUP}:spring-beans:jar:#{SPRING_VERSION}",
    :core            => "#{SPRING_GROUP}:spring-core:jar:#{SPRING_VERSION}",
    :web             => "#{SPRING_GROUP}:spring-web:jar:#{SPRING_VERSION}",
    :webmvc          => "#{SPRING_GROUP}:spring-webmvc:jar:#{SPRING_VERSION}",
    :context         => "#{SPRING_GROUP}:spring-context:jar:#{SPRING_VERSION}",
    :context_support => "#{SPRING_GROUP}:spring-context-support:jar:#{SPRING_VERSION}",
    :expression      => "#{SPRING_GROUP}:spring-expression:jar:#{SPRING_VERSION}",
    :asm             => "#{SPRING_GROUP}:spring-asm:jar:#{SPRING_VERSION}",
    :test            => "#{SPRING_GROUP}:spring-test:jar:#{SPRING_VERSION}",
    :aop             => "#{SPRING_GROUP}:spring-aop:jar:#{SPRING_VERSION}",
    :jms             => "#{SPRING_GROUP}:spring-jms:jar:#{SPRING_VERSION}",
    :tx              => "#{SPRING_GROUP}:spring-tx:jar:#{SPRING_VERSION}")

AOP = "aopalliance:aopalliance:jar:1.0"

ASPECTJ = group('aspectjweaver', 'aspectjrt',
                :under=> 'org.aspectj', :version => '1.6.10')

XML_BEANS = group('xmlbeans', 'xmlbeans-xpath',
                  :under => 'org.apache.xmlbeans',:version => '2.3.0')

WS_CLIENTS_VERSION = "12.1.2"
WS_CLIENTS = group('activation-service', 'configuration-service', 'identify-service',
                   'order-management-service', 'state-management-service', 'routing-lookup-service',
                   'customer-service', 'appointment-service', 'payment-service',
                   'notification-service', 'network-service', 'pay-per-view-service',
                   'obd-truckstop-service', 'divr-network-service', 'divr-routing-service',
                   'divr-configuration-service', 'divr-appointment-service', 'outbound-dialer-service',
                   'investor-relations-service',
                   :under => 'com.comcast.xivr', :version => WS_CLIENTS_VERSION)

VIP_MONITOR = "com.comcast.ivr.vip:vip-monitor:jar:1.0.4"

VELOCITY = ["org.apache.velocity:velocity:jar:1.7", "org.apache.velocity:velocity-tools:jar:2.0"]

DOM4J = "dom4j:dom4j:jar:1.6.1"

SERVLET_API = "javax.servlet:servlet-api:jar:2.5"

URL_REWRITE = "org.tuckey:urlrewritefilter:jar:3.2.0"

SLF4J = group('slf4j-api', 'slf4j-log4j12',
              :under => 'org.slf4j', :version => '1.6.1')

LOG4J = ["log4j:log4j:jar:1.2.16", "log4j:apache-log4j-extras:jar:1.1"]

COMMONS = struct(
    :xmlschema => "org.apache.ws.commons.schema:XmlSchema:jar:1.4.7",
    :httpclient => "commons-httpclient:commons-httpclient:jar:3.1",
    :codec => "commons-codec:commons-codec:jar:1.4",
    :collections => "commons-collections:commons-collections:jar:3.2",
    :lang => "commons-lang:commons-lang:jar:2.5",
    :digester => "commons-digester:commons-digester:jar:2.0",
    :validator => "commons-validator:commons-validator:jar:1.3.1",
    :beanutils => "commons-beanutils:commons-beanutils:jar:1.8.2",
    :beanutils_collections => "commons-beanutils:commons-beanutils-bean-collections:jar:1.8.2",
    :fileupload => "commons-fileupload:commons-fileupload:jar:1.2",
    :io => "commons-io:commons-io:jar:2.0",
    :logging => "commons-logging:commons-logging:jar:1.1.1")

JODA_TIME = "joda-time:joda-time:jar:1.6.2"

CGLIB = "cglib:cglib-nodep:jar:2.2"

JUNIT = "junit:junit:jar:4.10"
SCALATEST= "org.scalatest:scalatest_#{SCALA_VERSION}:jar:1.6.1"
MOCKITO = "org.mockito:mockito-all:jar:1.9.0"
POWERMOCK = ["org.powermock:powermock-core:jar:1.4.11", "org.powermock:powermock-module-junit4:jar:1.4.11", "org.powermock:powermock-api-mockito:jar:1.4.11", "org.powermock:powermock-api-support:jar:1.4.11", "org.powermock:powermock-classloading-base:jar:1.4.11", "org.powermock:powermock-module-junit4-common:jar:1.4.11", "org.powermock:powermock-reflect:jar:1.4.11", "org.powermock:powermock-module-junit4-legacy:jar:1.4.11", "org.javassist:javassist:jar:3.15.0-GA"]
HAMCREST = "org.hamcrest:hamcrest-all:jar:1.1"
# Wont work in IDEA yet: DP4J = "com.dp4j:dp4j:jar:1.2"

SNAKE_YAML = "org.yaml:snakeyaml:jar:1.9"

# ActiveMQ and required dependencies for metrics
ACTIVE_MQ= group('activemq-core', 'activemq-spring', 'activemq-pool', 'activemq-web', 'activemq-camel',
                   :under=>'org.apache.activemq', :version=>'5.5.0')
GERONIMO_MGMT="org.apache.geronimo.specs:geronimo-j2ee-management_1.1_spec:jar:1.0.1"
CAMEL = group('camel-jms', 'camel-core', 'camel-spring',
              :under=> 'org.apache.camel', :version=> '2.7.2')
JETTY = group('jetty-websocket', 'jetty-continuation',
              :under=> 'org.eclipse.jetty', :version=>'7.4.2.v20110526')
XBEAN_SPRING ="org.apache.xbean:xbean-spring:jar:3.7"
JAVAX_JMS="javax.jms:jms:jar:1.1"
AVALON="avalon-framework:avalon-framework:jar:4.1.3"
JACKSON = group('jackson-core-asl', 'jackson-mapper-asl',
                :under=>'org.codehaus.jackson', :version=> '1.8.1')

# xIVR Dashboard
DASHBOARD = "com.comcast.xivr:dashboard:war:11.7.2"

# Jersey and dependencies
JERSEY = struct(
  :server => "com.sun.jersey:jersey-server:jar:1.8",
  :client => "com.sun.jersey:jersey-client:jar:1.8",
  :core => "com.sun.jersey:jersey-core:jar:1.8")
JAX_RS = "javax.ws.rs:jsr311-api:jar:1.1.1"
ASM = "asm:asm:jar:3.1"

EHCACHE = ["com.googlecode.ehcache-spring-annotations:ehcache-spring-annotations:jar:1.1.3",
           "net.sf.ehcache:ehcache-core:jar:2.2.0"]

LOG4MONGO="org.log4mongo:log4mongo-java:jar:0.7.2"
MONGO_DRIVER="org.mongodb:mongo-java-driver:jar:2.6.5"

SKYPE_API = "com.github.taksan:skype-java-api:jar:1.1"

