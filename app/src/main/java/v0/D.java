package v0;

import androidx.media3.common.DataReader;
import java.io.IOException;

/* loaded from: classes.dex */
public interface D extends DataReader {
    void advancePeekPosition(int i2) throws IOException;

    boolean advancePeekPosition(int i2, boolean z6) throws IOException;

    long getLength();

    long getPeekPosition();

    long getPosition();

    int peek(byte[] bArr, int i2, int i7) throws IOException;

    void peekFully(byte[] bArr, int i2, int i7) throws IOException;

    boolean peekFully(byte[] bArr, int i2, int i7, boolean z6) throws IOException;

    @Override // androidx.media3.common.DataReader
    int read(byte[] bArr, int i2, int i7) throws IOException;

    void readFully(byte[] bArr, int i2, int i7) throws IOException;

    boolean readFully(byte[] bArr, int i2, int i7, boolean z6) throws IOException;

    void resetPeekPosition();

    int skip(int i2) throws IOException;

    void skipFully(int i2) throws IOException;

    boolean skipFully(int i2, boolean z6) throws IOException;
}
