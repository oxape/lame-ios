
#!/bin/sh
./configure \
--disable-shared \
--disable-frontend \
--disable-debug \
--host=arm-apple-darwin \
--prefix="/Users/oxape/Desktop/thin/arm64" \

#find the tool for the given SDK name
CC="xcrun -sdk iphoneos clang -arch arm64" \
CFLAGS="-arch arm64 -miphoneos-version-min=8.0" \
LDFLAGS="-arch arm64 -miphoneos-version-min=8.0"
make clean
make -j8
make install
