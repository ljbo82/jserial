# Java Serial Communication Library

This repository aggregates both a [java library](https://github.com/ljbo82/jserial-java) and respective [native library](https://github.com/ljbo82/jserial-jni). These libraries provide serial communications for java applications.

## Cloning

This repository uses [submodules](https://git-scm.com/book/en/v2/Git-Tools-Submodules). When cloning this repo, ensure the option `--recursive` is present.

## Supported platforms

Library uses JNI in order to provide serial communications. Because of these native calls, library is supported currently for the following platforms (all of them must have a JRE8+):

* linux-x64
* windows-x64

## Compiling

In order to compile this library, the following tools must be present on the system (the validated build machine was running Ubuntu 20.04):

* [JDK8+](https://adoptium.net/temurin/archive/?version=8)

  * On ubuntu, JDK8+ can be installed via apt:

    ```sh
    sudo apt install openjdk-<version>-jdk
    ```

* [Apache Maven](https://maven.apache.org/) (v3.6+)

  * On ubuntu, maven can be installed via apt:

    ```sh
    sudo apt install maven
    ```
* [GNU Make](https://www.gnu.org/software/make/) (v.4.2+)

  * On ubuntu, GNU make can be installed via apt:

    ```sh
    sudo apt install build-essential
    ```

* [GCC](https://gcc.gnu.org/) (v.9.4+)

  * On ubuntu, GCC can be installed via apt:

    ```sh
    sudo apt install build-essential
    ```

* [Mingw-w64](https://www.mingw-w64.org/) GCC (v.9.3+)

  * On ubuntu, Mingw-w64 can be installed via apt:

    ```sh
    sudo apt install gcc-mingw-w64
    ```

Will all dependencies satfisfied, just call `make` from project root directory:

```sh
make
```

Generated JAR will can located into **jserial-java/target/jserial-x.y.z.jar** (and it will be installed into [maven local repository](https://www.baeldung.com/maven-local-repository):


## Cleaning source tree

In order to delete the artifacts generated by build process, just call (from the project root directory):

```sh
make clean
```

## Licensing

The java library project is licensed under the **Apache License 2.0**. See the files called [LICENSE](https://github.com/ljbo82/jserial-java/blob/master/LICENSE) and [NOTICE](https://github.com/ljbo82/jserial-java/blob/master/NOTICE) for more information.

> **Native libraries**
>
> This projects uses a [JNI native library](https://github.com/ljbo82/jserial-jni) which is licensed under [MIT license](https://github.com/ljbo82/jserial-jni/blob/master/LICENSE).

## Contact

For general information visit the main project site at https://github.com/ljbo82/jserial.