package androidx.media3.datasource;

import P3.C;
import P3.v;
import V3.AbstractC0353n;
import V3.F;
import V3.H;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import androidx.media3.common.MediaMetadata;
import androidx.media3.common.util.BitmapLoader;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.DataSource;
import androidx.media3.datasource.DefaultDataSource;
import java.io.IOException;
import java.util.concurrent.Callable;
import java.util.concurrent.Executors;

@UnstableApi
/* loaded from: classes.dex */
public final class DataSourceBitmapLoader implements BitmapLoader {
    public static final C DEFAULT_EXECUTOR_SERVICE = com.google.common.base.c.memoize(new d());
    private final DataSource.Factory dataSourceFactory;
    private final H listeningExecutorService;
    private final boolean makeShared;
    private final int maximumOutputDimension;
    private final BitmapFactory.Options options;

    public static final class Builder {
        private final Context context;
        private DataSource.Factory dataSourceFactory;
        private H listeningExecutorService;
        private boolean makeShared;
        private int maximumOutputDimension = -1;
        private BitmapFactory.Options options;

        public Builder(Context context) {
            this.context = context;
        }

        public DataSourceBitmapLoader build() {
            return new DataSourceBitmapLoader(this);
        }

        public Builder setBitmapFactoryOptions(BitmapFactory.Options options) {
            this.options = options;
            return this;
        }

        public Builder setDataSourceFactory(DataSource.Factory factory) {
            this.dataSourceFactory = factory;
            return this;
        }

        public Builder setExecutorService(H h7) {
            this.listeningExecutorService = h7;
            return this;
        }

        public Builder setMakeShared(boolean z6) {
            this.makeShared = z6;
            return this;
        }

        public Builder setMaximumOutputDimension(int i2) {
            this.maximumOutputDimension = i2;
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Bitmap lambda$decodeBitmap$1(byte[] bArr) throws Exception {
        return maybeAsShared(this.makeShared, BitmapUtil.decode(bArr, bArr.length, this.options, this.maximumOutputDimension));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Bitmap lambda$loadBitmap$2(Uri uri) throws Exception {
        return load(this.dataSourceFactory.createDataSource(), uri, this.options, this.maximumOutputDimension, this.makeShared);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ H lambda$static$0() {
        return com.google.common.util.concurrent.g.listeningDecorator(Executors.newSingleThreadExecutor());
    }

    private static Bitmap load(DataSource dataSource, Uri uri, BitmapFactory.Options options, int i2, boolean z6) throws IOException {
        try {
            dataSource.open(new DataSpec(uri));
            byte[] readToEnd = DataSourceUtil.readToEnd(dataSource);
            return maybeAsShared(z6, BitmapUtil.decode(readToEnd, readToEnd.length, options, i2));
        } finally {
            dataSource.close();
        }
    }

    private static Bitmap maybeAsShared(boolean z6, Bitmap bitmap) {
        return z6 ? BitmapUtil.makeShared(bitmap) : bitmap;
    }

    @Override // androidx.media3.common.util.BitmapLoader
    public F decodeBitmap(byte[] bArr) {
        return ((AbstractC0353n) this.listeningExecutorService).submit((Callable) new e(0, this, bArr));
    }

    @Override // androidx.media3.common.util.BitmapLoader
    public F loadBitmap(Uri uri) {
        return ((AbstractC0353n) this.listeningExecutorService).submit((Callable) new e(1, this, uri));
    }

    @Override // androidx.media3.common.util.BitmapLoader
    public final /* synthetic */ F loadBitmapFromMetadata(MediaMetadata mediaMetadata) {
        return androidx.media3.common.util.b.a(this, mediaMetadata);
    }

    @Override // androidx.media3.common.util.BitmapLoader
    public boolean supportsMimeType(String str) {
        return Util.isBitmapFactorySupportedMimeType(str);
    }

    @Deprecated
    public DataSourceBitmapLoader(Context context) {
        this(new Builder(context));
    }

    @Deprecated
    public DataSourceBitmapLoader(Context context, int i2) {
        this(new Builder(context).setMaximumOutputDimension(i2));
    }

    @Deprecated
    public DataSourceBitmapLoader(H h7, DataSource.Factory factory) {
        this(h7, factory, null);
    }

    @Deprecated
    public DataSourceBitmapLoader(H h7, DataSource.Factory factory, BitmapFactory.Options options) {
        this(h7, factory, options, -1);
    }

    @Deprecated
    public DataSourceBitmapLoader(H h7, DataSource.Factory factory, BitmapFactory.Options options, int i2) {
        this.listeningExecutorService = h7;
        this.dataSourceFactory = factory;
        this.options = options;
        this.maximumOutputDimension = i2;
        this.makeShared = false;
    }

    private DataSourceBitmapLoader(Builder builder) {
        DataSource.Factory factory;
        H h7;
        if (builder.dataSourceFactory != null) {
            factory = builder.dataSourceFactory;
        } else {
            factory = new DefaultDataSource.Factory(builder.context);
        }
        this.dataSourceFactory = factory;
        if (builder.listeningExecutorService != null) {
            h7 = builder.listeningExecutorService;
        } else {
            h7 = (H) v.checkNotNull((H) DEFAULT_EXECUTOR_SERVICE.get());
        }
        this.listeningExecutorService = h7;
        this.options = builder.options;
        this.maximumOutputDimension = builder.maximumOutputDimension;
        this.makeShared = builder.makeShared;
    }
}
