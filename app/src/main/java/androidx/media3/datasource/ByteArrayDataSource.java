package androidx.media3.datasource;

import P3.v;
import android.net.Uri;
import androidx.media3.common.util.UnstableApi;
import java.io.IOException;

@UnstableApi
/* loaded from: classes.dex */
public final class ByteArrayDataSource extends BaseDataSource {
    private int bytesRemaining;
    private byte[] data;
    private boolean opened;
    private int readPosition;
    private Uri uri;
    private final UriResolver uriResolver;

    public interface UriResolver {
        byte[] resolve(Uri uri) throws IOException;
    }

    public ByteArrayDataSource(final byte[] bArr) {
        this(new UriResolver() { // from class: androidx.media3.datasource.a
            @Override // androidx.media3.datasource.ByteArrayDataSource.UriResolver
            public final byte[] resolve(Uri uri) {
                byte[] lambda$new$0;
                lambda$new$0 = ByteArrayDataSource.lambda$new$0(bArr, uri);
                return lambda$new$0;
            }
        });
        v.checkArgument(bArr.length > 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ byte[] lambda$new$0(byte[] bArr, Uri uri) throws IOException {
        return bArr;
    }

    @Override // androidx.media3.datasource.DataSource
    public void close() {
        if (this.opened) {
            this.opened = false;
            transferEnded();
        }
        this.uri = null;
        this.data = null;
    }

    @Override // androidx.media3.datasource.DataSource
    public Uri getUri() {
        return this.uri;
    }

    @Override // androidx.media3.datasource.DataSource
    public long open(DataSpec dataSpec) throws IOException {
        transferInitializing(dataSpec);
        Uri uri = dataSpec.uri;
        this.uri = uri;
        byte[] resolve = this.uriResolver.resolve(uri);
        this.data = resolve;
        long j7 = dataSpec.position;
        if (j7 > resolve.length) {
            throw new DataSourceException(2008);
        }
        int i2 = (int) j7;
        this.readPosition = i2;
        int length = resolve.length - i2;
        this.bytesRemaining = length;
        long j8 = dataSpec.length;
        if (j8 != -1) {
            this.bytesRemaining = (int) Math.min(length, j8);
        }
        this.opened = true;
        transferStarted(dataSpec);
        long j9 = dataSpec.length;
        return j9 != -1 ? j9 : this.bytesRemaining;
    }

    @Override // androidx.media3.common.DataReader
    public int read(byte[] bArr, int i2, int i7) {
        if (i7 == 0) {
            return 0;
        }
        int i8 = this.bytesRemaining;
        if (i8 == 0) {
            return -1;
        }
        int min = Math.min(i7, i8);
        System.arraycopy(v.checkNotNull(this.data), this.readPosition, bArr, i2, min);
        this.readPosition += min;
        this.bytesRemaining -= min;
        bytesTransferred(min);
        return min;
    }

    public ByteArrayDataSource(UriResolver uriResolver) {
        super(false);
        this.uriResolver = (UriResolver) v.checkNotNull(uriResolver);
    }
}
