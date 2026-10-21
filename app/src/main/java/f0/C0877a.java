package f0;

import android.media.MediaDataSource;
import java.io.IOException;

/* renamed from: f0.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0877a extends MediaDataSource {

    /* renamed from: b, reason: collision with root package name */
    public long f14037b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ f f14038e;

    public C0877a(f fVar) {
        this.f14038e = fVar;
    }

    @Override // android.media.MediaDataSource
    public long getSize() throws IOException {
        return -1L;
    }

    @Override // android.media.MediaDataSource
    public int readAt(long j7, byte[] bArr, int i2, int i7) throws IOException {
        if (i7 == 0) {
            return 0;
        }
        if (j7 < 0) {
            return -1;
        }
        try {
            long j8 = this.f14037b;
            f fVar = this.f14038e;
            if (j8 != j7) {
                if (j8 >= 0 && j7 >= j8 + fVar.available()) {
                    return -1;
                }
                fVar.seek(j7);
                this.f14037b = j7;
            }
            if (i7 > fVar.available()) {
                i7 = fVar.available();
            }
            int read = fVar.read(bArr, i2, i7);
            if (read >= 0) {
                this.f14037b += read;
                return read;
            }
        } catch (IOException unused) {
        }
        this.f14037b = -1L;
        return -1;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
    }
}
