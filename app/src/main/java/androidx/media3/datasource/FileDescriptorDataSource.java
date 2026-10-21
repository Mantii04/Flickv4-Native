package androidx.media3.datasource;

import P3.v;
import Q3.s0;
import android.net.Uri;
import android.system.ErrnoException;
import android.system.Os;
import android.system.OsConstants;
import androidx.media3.common.PlaybackException;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.channels.FileChannel;
import java.util.Set;

@UnstableApi
/* loaded from: classes.dex */
public class FileDescriptorDataSource extends BaseDataSource {
    private static final Set<FileDescriptor> inUseFileDescriptors = s0.newConcurrentHashSet();
    private long bytesRemaining;
    private final FileDescriptor fileDescriptor;
    private FileInputStream inputStream;
    private final long length;
    private final long offset;
    private boolean opened;
    private Uri uri;

    public FileDescriptorDataSource(FileDescriptor fileDescriptor, long j7, long j8) {
        super(false);
        this.fileDescriptor = (FileDescriptor) v.checkNotNull(fileDescriptor);
        this.offset = j7;
        this.length = j8;
    }

    private static void seekFileDescriptor(FileDescriptor fileDescriptor, long j7) throws DataSourceException {
        try {
            Os.lseek(fileDescriptor, j7, OsConstants.SEEK_SET);
        } catch (ErrnoException e3) {
            throw new DataSourceException(e3, 2000);
        }
    }

    @Override // androidx.media3.datasource.DataSource
    public void close() throws DataSourceException {
        this.uri = null;
        inUseFileDescriptors.remove(this.fileDescriptor);
        try {
            try {
                FileInputStream fileInputStream = this.inputStream;
                if (fileInputStream != null) {
                    fileInputStream.close();
                }
            } catch (IOException e3) {
                throw new DataSourceException(e3, 2000);
            }
        } finally {
            this.inputStream = null;
            if (this.opened) {
                this.opened = false;
                transferEnded();
            }
        }
    }

    @Override // androidx.media3.datasource.DataSource
    public Uri getUri() {
        return this.uri;
    }

    @Override // androidx.media3.datasource.DataSource
    public long open(DataSpec dataSpec) throws DataSourceException {
        try {
            this.uri = dataSpec.uri;
            transferInitializing(dataSpec);
            if (!inUseFileDescriptors.add(this.fileDescriptor)) {
                throw new DataSourceException(new IllegalStateException("Attempted to re-use an already in-use file descriptor"), -2);
            }
            long j7 = this.length;
            if (j7 != -1 && dataSpec.position > j7) {
                throw new DataSourceException(2008);
            }
            seekFileDescriptor(this.fileDescriptor, this.offset + dataSpec.position);
            FileInputStream fileInputStream = new FileInputStream(this.fileDescriptor);
            this.inputStream = fileInputStream;
            long j8 = this.length;
            if (j8 == -1) {
                FileChannel channel = fileInputStream.getChannel();
                long size = channel.size();
                if (size == 0) {
                    this.bytesRemaining = -1L;
                } else {
                    long position = size - channel.position();
                    this.bytesRemaining = position;
                    if (position < 0) {
                        throw new DataSourceException(2008);
                    }
                }
            } else {
                long j9 = j8 - dataSpec.position;
                this.bytesRemaining = j9;
                if (j9 < 0) {
                    throw new DataSourceException(2008);
                }
            }
            long j10 = dataSpec.length;
            if (j10 != -1) {
                long j11 = this.bytesRemaining;
                if (j11 != -1) {
                    j10 = Math.min(j11, j10);
                }
                this.bytesRemaining = j10;
            }
            this.opened = true;
            transferStarted(dataSpec);
            long j12 = dataSpec.length;
            return j12 != -1 ? j12 : this.bytesRemaining;
        } catch (DataSourceException e3) {
            throw e3;
        } catch (IOException e7) {
            throw new DataSourceException(e7, e7 instanceof FileNotFoundException ? PlaybackException.ERROR_CODE_IO_FILE_NOT_FOUND : 2000);
        }
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
        } catch (IOException e3) {
            throw new DataSourceException(e3, 2000);
        }
    }
}
