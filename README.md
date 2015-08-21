tomcat bugs used to evaluate Ares


## Build

### Build Ares

Ares can only be built on top of a 64-bit linux.
Besides, you should install a JDK 7 first.

1. In a shell, change directory to `ares/hotspot/make`
2. Run `quick_make.sh`, then you will find a script to launch ares at `ares/hotspot/build/linux/linux_amd64_compiler2/fastdebug/hotspot`

### Build Ares JPF

1. You can import this project into an eclipse.

### Build JPF

1. Download JPF from its website.
2. Make sure that your JPF is compatible with JDK7, e.g., no JDK 8 features.
3. Build your JPF in the eclipse.

## Run

You only need set up required options to your JVM startup command line.
The following is what in my `.bashrc`.

```
JAVAPLUS_LOG="-XX:TraceRuntimeRecovery=2060"
JAVAPLUS_JPF="/path/to/ares-jpf/bin:/path/to/jpf.jar:/path/to/classes.jar"

export RUN_JAVA_PLUS="/path/to/ares/hotspot/build/linux/linux_amd64_compiler2/fastdebug/hotspot"
export USEJPF="$JAVAPLUS_LOG -XX:+UseJPF -Xbootclasspath/a:${JAVAPLUS_JPF}"
export USEET="$JAVAPLUS_LOG -XX:+UseErrorTransformation -XX:-UseEarlyReturn -XX:-OnlyEarlyReturnVoid -XX:-StopStackWalkingAtReflection"
export USEER="$JAVAPLUS_LOG -XX:-UseErrorTransformation -XX:+UseEarlyReturn -XX:+OnlyEarlyReturnVoid -XX:-StopStackWalkingAtReflection"
```

Note that all these options are non-standard JVM options and thus are only valid in Ares.

Besides, you need install a valid JPF which is compatible with JDK 7 (no JDK 8 or newer features).

### Run Tomcat

You can start a Tomcat instance by the command `./bin/catalina.sh run`.
By using `run` instead of `start`, you can see outputs in the console.
If you want to run Tomcat with the standard `java`, just unset the environment variable `RUN_JAVA_PLUS`, e.g., `RUN_JAVA_PLUS=  ./bin/catalina.sh run`

Note that Tomcat 6 requires you setup a valid `JAVA_HOME`.


### Unreproducible Bugs

1. Tomcat bug 42449
    * Link: https://bz.apache.org/bugzilla/show_bug.cgi?id=42449
2. Tomcat bug 43468
    * Link: https://bz.apache.org/bugzilla/show_bug.cgi?id=43468
3. Tomcat 47342
    * Link: https://bz.apache.org/bugzilla/show_bug.cgi?id=47342
4. Tomcat 53606
    * https://bz.apache.org/bugzilla/show_bug.cgi?id=53606
