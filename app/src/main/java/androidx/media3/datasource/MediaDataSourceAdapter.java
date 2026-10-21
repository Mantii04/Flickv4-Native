package androidx.media3.datasource;

import android.media.MediaDataSource;
import android.net.Uri;
import androidx.media3.common.util.UnstableApi;
import java.io.IOException;

@UnstableApi
/* loaded from: classes.dex */
public class MediaDataSourceAdapter extends BaseDataSource {
    private long bytesRemaining;
    private final MediaDataSource mediaDataSource;
    private boolean opened;
    private long position;
    private Uri uri;

    public MediaDataSourceAdapter(MediaDataSource mediaDataSource, boolean z6) {
        super(z6);
        this.mediaDataSource = mediaDataSource;
    }

    @Override // androidx.media3.datasource.DataSource
    public void close() throws IOException {
        this.uri = null;
        if (this.opened) {
            this.opened = false;
            transferEnded();
        }
    }

    @Override // androidx.media3.datasource.DataSource
    public Uri getUri() {
        return this.uri;
    }

    @Override // androidx.media3.datasource.DataSource
    public long open(DataSpec dataSpec) throws IOException {
        this.uri = dataSpec.uri;
        this.position = dataSpec.position;
        transferInitializing(dataSpec);
        if (this.mediaDataSource.getSize() != -1 && this.position > this.mediaDataSource.getSize()) {
            throw new DataSourceException(2008);
        }
        if (this.mediaDataSource.getSize() == -1) {
            this.bytesRemaining = -1L;
        } else {
            this.bytesRemaining = this.mediaDataSource.getSize() - this.position;
        }
        long j7 = dataSpec.length;
        if (j7 != -1) {
            long j8 = this.bytesRemaining;
            if (j8 != -1) {
                j7 = Math.min(j8, j7);
            }
            this.bytesRemaining = j7;
        }
        this.opened = true;
        transferStarted(dataSpec);
        long j9 = dataSpec.length;
        return j9 != -1 ? j9 : this.bytesRemaining;
    }

    @Override // androidx.media3.common.DataReader
    public int read(byte[] bArr, int i2, int i7) throws DataSourceException {
        if (i7 == 0) {
            return 0;
        }
        long j7 = this.bytesRemaining;
        if (j7 == 0) {
            return -1;
        }
        if (j7 != -1) {
            i7 = (int) Math.min(j7, i7);
        }
        try {
            int readAt = this.mediaDataSource.readAt(this.position, bArr, i2, i7);
            if (readAt == -1) {
                return -1;
            }
            long j8 = readAt;
            this.position += j8;
            long j9 = this.bytesRemaining;
            if (j9 != -1) {
                this.bytesRemaining = j9 - j8;
            }
            bytesTransferred(readAt);
            return readAt;
        } catch (IOException e3) {
            throw new DataSourceException(e3, 2000);
        }
    }
}
