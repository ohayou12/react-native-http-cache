React Native http cache control for both fetch/XMLHttpRequest and ImageView

- [x] iOS
- [x] Android

## Installation

```sh
npm install @ohayou12/react-native-http-cache --save

# or

yarn add @ohayou12/react-native-http-cache
```

## Auto Link

react-native version >= 0.60.0

## Manual Link

react-native version < 0.60.0

```sh
react-native link
```

## IOS

```
cd ios && pod install
```

## Android

- Add following lines into `android/settings.gradle`

```
include ':RCTHttpCache'
project(':RCTHttpCache').projectDir = new File(rootProject.projectDir, '../node_modules/@ohayou12/react-native-http-cache/android')
```

- Add following lines into your `android/app/build.gradle` in section `dependencies`

```
...
dependencies {
   ...
   compile project(':RCTHttpCache')    // Add this line only.
}
```

- Add following lines into `MainApplication.java`

```java
...
import cn.reactnative.httpcache.HttpCachePackage;
      // Add this line before public class MainApplication

public class MainApplication extends Application implements ReactApplication {

  private final ReactNativeHost mReactNativeHost = new ReactNativeHost(this) {
    @Override
    protected boolean getUseDeveloperSupport() {
      return BuildConfig.DEBUG;
    }

    @Override
    protected List<ReactPackage> getPackages() {
      return Arrays.<ReactPackage>asList(
          new HttpCachePackage(), // Add this line
          new MainReactPackage()
      );
    }
  };

  @Override
  public ReactNativeHost getReactNativeHost() {
      return mReactNativeHost;
  }
}
```

- Add these lines to 'proguard-rules.pro' if you need to minify your java code:

```
-keep class com.facebook.cache.disk.DiskStorageCache {
   private boolean maybeUpdateFileCacheSize();
}
```

## JavaScript: import all and invoke!

```js
import * as CacheManager from "@ohayou12/react-native-http-cache";

// invoke API directly when in need
CacheManager.clear();
```

## API Documentation

#### clearCache()

Clear cache for all type.

Return a promise which indicate the clear state.

#### getCacheSize()

Get cache size for all type.

Return a promise that contain the cache size(in bytes).

#### clearHttpCache()

Clear cache for fetch/ajax only.

Return a promise which indicate the clear state.

#### getHttpCacheSize()

Get cache size for fetch/ajax only.

Return a promise that contain the cache size(in bytes).

#### clearImageCache()

Clear cache for ImageView only.

Return a promise which indicate the clear state.

#### getImageCacheSize()

Get cache size for ImageView only.

Return a promise that contain the cache size(in bytes).

## Authors

- [Deng Yun](https://github.com/tdzl2003) from [React-Native-CN](https://github.com/reactnativecn)
- [Lv Bingru](https://github.com/lvbingru) from [React-Native-CN](https://github.com/reactnativecn)
