package R3;

import P3.v;
import java.io.OutputStream;

/* loaded from: classes2.dex */
public final class f extends OutputStream {
    public String toString() {
        return "ByteStreams.nullOutputStream()";
    }

    @Override // java.io.OutputStream
    public void write(int i2) {
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) {
        v.checkNotNull(bArr);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i2, int i7) {
        v.checkNotNull(bArr);
        v.checkPositionIndexes(i2, i7 + i2, bArr.length);
    }
}
