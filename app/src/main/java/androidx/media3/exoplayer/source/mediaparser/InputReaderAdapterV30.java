package androidx.media3.exoplayer.source.mediaparser;

import android.media.MediaParser$SeekableInputReader;
import androidx.media3.common.DataReader;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import java.io.IOException;

@UnstableApi
/* loaded from: classes.dex */
public final class InputReaderAdapterV30 implements MediaParser$SeekableInputReader {
    private long currentPosition;
    private DataReader dataReader;
    private long lastSeekPosition;
    private long resourceLength;

    public long getAndResetSeekPosition() {
        long j7 = this.lastSeekPosition;
        this.lastSeekPosition = -1L;
        return j7;
    }

    public long getLength() {
        return this.resourceLength;
    }

    public long getPosition() {
        return this.currentPosition;
    }

    public int read(byte[] bArr, int i2, int i7) throws IOException {
        int read = ((DataReader) Util.castNonNull(this.dataReader)).read(bArr, i2, i7);
        this.currentPosition += read;
        return read;
    }

    public void seekToPosition(long j7) {
        this.lastSeekPosition = j7;
    }

    public void setCurrentPosition(long j7) {
        this.currentPosition = j7;
    }

    public void setDataReader(DataReader dataReader, long j7) {
        this.dataReader = dataReader;
        this.resourceLength = j7;
        this.lastSeekPosition = -1L;
    }
}
