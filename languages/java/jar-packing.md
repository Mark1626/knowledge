# Different ways of packing JAR

[Back](./java.md){: .button}


#### Skinny JAR

A skinny JAR contains only the class files from your project. The dependencies will have to be resolved and added
in your classpath. When you are building a library this is probably what you should do

#### Thin JAR

A thin jar contains all your class files and the direct dependencies, but will not contain the runtime needed. An example would
be your web apps WAR, which you add to your Tomacat or Java EE server


#### Hollow JAR

A hollow JAR is the opposite of your the thin JAR, containing only the runtime and not contaning the functional parts of the app

#### Fat JAR

A fat JAR contains everything your application needs, including the runtime. It becomes a simple thing of calling `java -jar <file-name>` to run
your application

