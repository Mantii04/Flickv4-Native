package v0;

import androidx.media3.common.DataReader;
import androidx.media3.common.Format;
import androidx.media3.common.util.ParsableByteArray;
import java.io.EOFException;
import java.io.IOException;

/* renamed from: v0.y, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1740y implements r0 {

    /* renamed from: a, reason: collision with root package name */
    public final byte[] f20571a = new byte[4096];

    @Override // v0.r0
    public final /* synthetic */ void durationUs(long j7) {
        p0.a(this, j7);
    }

    @Override // v0.r0
    public final /* synthetic */ int sampleData(DataReader dataReader, int i2, boolean z6) {
        return p0.b(this, dataReader, i2, z6);
    }

    @Override // v0.r0
    public final /* synthetic */ void sampleData(ParsableByteArray parsableByteArray, int i2) {
        p0.c(this, parsableByteArray, i2);
    }

    @Override // v0.r0
    public int sampleData(DataReader dataReader, int i2, boolean z6, int i7) throws IOException {
        byte[] bArr = this.f20571a;
        int read = dataReader.read(bArr, 0, Math.min(bArr.length, i2));
        if (read != -1) {
            return read;
        }
        if (z6) {
            return -1;
        }
        throw new EOFException();
    }

    @Override // v0.r0
    public void sampleData(ParsableByteArray parsableByteArray, int i2, int i7) {
        parsableByteArray.skipBytes(i2);
    }

    @Override // v0.r0
    public void format(Format format) {
    }

    @Override // v0.r0
    public void sampleMetadata(long j7, int i2, int i7, int i8, q0 q0Var) {
    }
}
