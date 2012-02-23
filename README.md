# xIVR Dashboard

This dashboard application is designed primarily to be included as a dependency in xIVR-based applications.  

## Usage

Although designed to be a drop-in solution, the dashboard requires a minimum amount of configuration in order to function as part of another application. We can take take advantage of buildr's ability to "merge" wars/jars/zips and include/exclude certain files. This allows us to share common resources across multiple web applications. The idea is similar to a maven war overlay which you might be familiar with.

The dashboard artifact we will be merging is a war file, but it has no libs, properties, or a web.xml. It is designed exclusively to run as part of a merged application war. To run the dashboard application in standalone mode (for testing purposes) see the 'Standalone Mode' section below. 

### Buildfile

* Include the maven artifact as a dependency in the project

```ruby
DASHBOARD="com.comcast.xivr:dashboard:war:11-6-1-SNAPSHOT"
```

* Add the artifact to the final war

```ruby
package(:war).merge(artifact(DASHBOARD))
```

### Spring Configuration

* Ensure that the Velocity configuration is wired up:

```java   
@Bean
public VelocityConfigurer velocityConfig() {
	return new VelocityConfigurer() {{
    	setResourceLoaderPath("/WEB-INF/velocity");
        setConfigLocation(new ClassPathResource("velocity.properties"));
    }};
}
```

```java   
@Bean
public VelocityLayoutViewResolver htmlVelocityLayoutViewResolver() {
    return new VelocityLayoutViewResolver() {{
        setCache(true);
        setPrefix("");
        setSuffix(".html.vm");
        setLayoutUrl("layout/default.html.vm");
        setExposeSpringMacroHelpers(true);
        setToolboxConfigLocation("classpath:/toolbox.xml");
        setViewClass(VelocityToolsView.class);
        setOrder(2);
    }};
}
```

* Define a properties bean with the name of `buildProperties`.

```java
@Bean(name = "buildProperties")
@Lazy(false)
public Properties buildProperties() throws IOException {
   	return new Properties() {{
       load(new ClassPathResource("build.properties")
               .getInputStream());
    }};
}
```

* Ensure that the following keys exist in the build.properties file:

```properties   
build.name = d2
build.profile = development
build.date = Wed Jun 08 21:36:33 -0500 2011
build.version = 11.6.1-SNAPSHOT
build.svn.rev = 41478
```
 	
* Define a bean of type `LinkedHashMap<String, Object>` with a name of `dashboardPropertiesMap`. Include any property files that you want to show up on the dashboard. The system properties are added by default to the end. The key of the map will be the title of the section on the dashboard. The objects of map may be of type `ContextAwarePropertyPlaceholderConfigurer` or `java.util.Properties`.

```java   
@Qualifier("dashboardPropertiesMap")
@Bean
@Lazy(false)
@DependsOn({"applicationProperties",
            "dnisAccountNumberProperties"})
public LinkedHashMap<String, Object> dashboardPropertiesMap() throws IOException {
    return new LinkedHashMap<String, Object>() {{
        put("DNIS Account Number", dnisAccountNumberProperties);
        put("Application Properties", applicationProperties);
    }};
}
```
	
* Import the `spring-config-dashboard.xml` in the application's spring configuration.

### Installation

Although, the the SNAPSHOT version of the dashboard artifact is automatically deployed to nexus on every checkin you might need to install locally or upload to nexus manually.  

* To install the SNAPSHOT artifact to your local maven repo.

`buildr clean install`

* To upload the SNAPSHOT artifact to nexus:

`buildr clean upload`

### Running Standalone

You can run the dashboard standalone. It is setup to include a sample properties file for demonstration purposes.

* Use the included jetty task

`buildr clean jetty`
