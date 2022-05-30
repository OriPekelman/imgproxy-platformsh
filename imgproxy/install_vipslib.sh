mkdir -p $PLATFORM_CACHE_DIR/libvips
cd $PLATFORM_CACHE_DIR/libvips
wget -nc https://github.com/libvips/libvips/releases/download/v$VIPS_VERSION/vips-$VIPS_VERSION.tar.gz
tar xzf vips-$VIPS_VERSION.tar.gz  --strip-components=1 -C .
./configure --prefix=/app/.global/bin/libvips
make
make install
cd ~