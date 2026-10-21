package androidx.media3.datasource;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import android.os.Bundle;
import androidx.media3.common.PlaybackException;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.channels.FileChannel;
import java.util.Objects;

@UnstableApi
/* loaded from: classes.dex */
public final class ContentDataSource extends BaseDataSource {
    private AssetFileDescriptor assetFileDescriptor;
    private long bytesRemaining;
    private FileInputStream inputStream;
    private boolean opened;
    private final ContentResolver resolver;
    private Uri uri;

    public static class ContentDataSourceException extends DataSourceException {
        @Deprecated
        public ContentDataSourceException(IOException iOException) {
            this(iOException, 2000);
        }

        public ContentDataSourceException(IOException iOException, int i2) {
            super(iOException, i2);
        }
    }

    public ContentDataSource(Context context) {
        super(false);
        this.resolver = context.getContentResolver();
    }

    @Override // androidx.media3.datasource.DataSource
    public void close() throws ContentDataSourceException {
        this.uri = null;
        try {
            try {
                FileInputStream fileInputStream = this.inputStream;
                if (fileInputStream != null) {
                    fileInputStream.close();
                }
                this.inputStream = null;
                try {
                    try {
                        AssetFileDescriptor assetFileDescriptor = this.assetFileDescriptor;
                        if (assetFileDescriptor != null) {
                            assetFileDescriptor.close();
                        }
                    } catch (IOException e3) {
                        throw new ContentDataSourceException(e3, 2000);
                    }
                } finally {
                    this.assetFileDescriptor = null;
                    if (this.opened) {
                        this.opened = false;
                        transferEnded();
                    }
                }
            } catch (IOException e7) {
                throw new ContentDataSourceException(e7, 2000);
            }
        } catch (Throwable th) {
            this.inputStream = null;
            try {
                try {
                    AssetFileDescriptor assetFileDescriptor2 = this.assetFileDescriptor;
                    if (assetFileDescriptor2 != null) {
                        assetFileDescriptor2.close();
                    }
                    this.assetFileDescriptor = null;
                    if (this.opened) {
                        this.opened = false;
                        transferEnded();
                    }
                    throw th;
                } catch (IOException e8) {
                    throw new ContentDataSourceException(e8, 2000);
                }
            } finally {
                this.assetFileDescriptor = null;
                if (this.opened) {
                    this.opened = false;
                    transferEnded();
                }
            }
        }
    }

    @Override // androidx.media3.datasource.DataSource
    public Uri getUri() {
        return this.uri;
    }

    @Override // androidx.media3.datasource.DataSource
    public long open(DataSpec dataSpec) throws ContentDataSourceException {
        int i2;
        AssetFileDescriptor openAssetFileDescriptor;
        try {
            try {
                Uri normalizeScheme = dataSpec.uri.normalizeScheme();
                this.uri = normalizeScheme;
                transferInitializing(dataSpec);
                if (Objects.equals(normalizeScheme.getScheme(), FirebaseAnalytics.Param.CONTENT)) {
                    Bundle bundle = new Bundle();
                    bundle.putBoolean("android.provider.extra.ACCEPT_ORIGINAL_MEDIA_FORMAT", true);
                    openAssetFileDescriptor = this.resolver.openTypedAssetFileDescriptor(normalizeScheme, "*/*", bundle);
                } else {
                    openAssetFileDescriptor = this.resolver.openAssetFileDescriptor(normalizeScheme, "r");
                }
                this.assetFileDescriptor = openAssetFileDescriptor;
                if (openAssetFileDescriptor == null) {
                    i2 = 2000;
                    try {
                        throw new ContentDataSourceException(new IOException("Could not open file descriptor for: " + normalizeScheme), 2000);
                    } catch (IOException e3) {
                        e = e3;
                        throw new ContentDataSourceException(e, e instanceof FileNotFoundException ? PlaybackException.ERROR_CODE_IO_FILE_NOT_FOUND : i2);
                    }
                }
                long length = openAssetFileDescriptor.getLength();
                FileInputStream fileInputStream = new FileInputStream(openAssetFileDescriptor.getFileDescriptor());
                this.inputStream = fileInputStream;
                if (length != -1 && dataSpec.position > length) {
                    throw new ContentDataSourceException(null, 2008);
                }
                long startOffset = openAssetFileDescriptor.getStartOffset();
                long skip = fileInputStream.skip(dataSpec.position + startOffset) - startOffset;
                if (skip != dataSpec.position) {
                    throw new ContentDataSourceException(null, 2008);
                }
                if (length == -1) {
                    FileChannel channel = fileInputStream.getChannel();
                    long size = channel.size();
                    if (size == 0) {
                        this.bytesRemaining = -1L;
                    } else {
                        long position = size - channel.position();
                        this.bytesRemaining = position;
                        if (position < 0) {
                            throw new ContentDataSourceException(null, 2008);
                        }
                    }
                } else {
                    long j7 = length - skip;
                    this.bytesRemaining = j7;
                    if (j7 < 0) {
                        throw new ContentDataSourceException(null, 2008);
                    }
                }
                long j8 = dataSpec.length;
                if (j8 != -1) {
                    long j9 = this.bytesRemaining;
                    if (j9 != -1) {
                        j8 = Math.min(j9, j8);
                    }
                    this.bytesRemaining = j8;
                }
                this.opened = true;
                transferStarted(dataSpec);
                long j10 = dataSpec.length;
                return j10 != -1 ? j10 : this.bytesRemaining;
            } catch (ContentDataSourceException e7) {
                throw e7;
            }
        } catch (IOException e8) {
            e = e8;
            i2 = 2000;
        }
    }

    @Override // androidx.media3.common.DataReader
    public int read(byte[] bArr, int i2, int i7) throws ContentDataSourceException {
        if (i7 == 0) {
            return 0;
        }
        long j7 = this.bytesRemaining;
        if (j7 == 0) {
            return -1;
        }
        if (j7 != -1) {
            try {
                i7 = (int) Math.min(j7, i7);
            } catch (IOException e3) {
                throw new ContentDataSourceException(e3, 2000);
            }
        }
        int read = ((FileInputStream) Util.castNonNull(this.inputStream)).read(bArr, i2, i7);
        if (read == -1) {
            return -1;
        }
        long j8 = this.bytesRemaining;
        if (j8 != -1) {
            this.bytesRemaining = j8 - read;
        }
        bytesTransferred(read);
        return read;
    }
}
