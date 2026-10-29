# vendor

`video.api:rtmpdroid` 1.2.1 (pulled in by `apivideo_live_stream` through StreamPack) ships its
native libraries with 4 KB ELF alignment, which Google Play rejects (16 KB page size requirement).
Upstream is unmaintained, so `rtmpdroid-1.2.1-16k.aar` is the same source rebuilt with NDK 28 and
`-Wl,-z,max-page-size=16384` for OpenSSL, librtmp and librtmpdroid. `android/build.gradle.kts`
substitutes it for every request of `video.api:rtmpdroid`.

Rebuild: clone https://github.com/apivideo/rtmpdroid, set `ndkVersion "28.2.13676358"`, add the
max-page-size linker flag to the OpenSSL Configure line and to `CMAKE_SHARED_LINKER_FLAGS`, point
rtmpdump at https://github.com/mirror/rtmpdump.git, then `./gradlew :lib:assembleUnpackedRelease`.
