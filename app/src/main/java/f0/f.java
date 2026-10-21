package f0;

import androidx.media3.common.util.Log;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes.dex */
public final class f extends C0878b {
    public f(byte[] bArr) {
        super(bArr);
        this.f14041b.mark(Log.LOG_LEVEL_OFF);
    }

    public void seek(long j7) throws IOException {
        int i2 = this.f14043f;
        if (i2 > j7) {
            this.f14043f = 0;
            this.f14041b.reset();
        } else {
            j7 -= i2;
        }
        skipFully((int) j7);
    }

    public f(InputStream inputStream) {
        super(inputStream);
        if (inputStream.markSupported()) {
            this.f14041b.mark(Log.LOG_LEVEL_OFF);
            return;
        }
        throw new IllegalArgumentException("Cannot create SeekableByteOrderedDataInputStream with stream that does not support mark/reset");
    }
}
