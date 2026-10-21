package u2;

import android.media.MediaDataSource;
import java.nio.ByteBuffer;

/* loaded from: classes.dex */
public final class W extends MediaDataSource {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ByteBuffer f20278b;

    public W(ByteBuffer byteBuffer) {
        this.f20278b = byteBuffer;
    }

    @Override // android.media.MediaDataSource
    public long getSize() {
        return this.f20278b.limit();
    }

    @Override // android.media.MediaDataSource
    public int readAt(long j7, byte[] bArr, int i2, int i7) {
        ByteBuffer byteBuffer = this.f20278b;
        if (j7 >= byteBuffer.limit()) {
            return -1;
        }
        byteBuffer.position((int) j7);
        int min = Math.min(i7, byteBuffer.remaining());
        byteBuffer.get(bArr, i2, min);
        return min;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }
}
