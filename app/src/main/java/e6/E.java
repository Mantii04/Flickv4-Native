package e6;

import android.support.v4.media.session.PlaybackStateCompat;
import androidx.media3.common.util.Log;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes2.dex */
public final class E extends InputStream {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ F f13987b;

    public E(F f3) {
        this.f13987b = f3;
    }

    @Override // java.io.InputStream
    public int available() {
        F f3 = this.f13987b;
        if (f3.f13990f) {
            throw new IOException("closed");
        }
        return (int) Math.min(f3.f13989e.size(), Log.LOG_LEVEL_OFF);
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f13987b.close();
    }

    @Override // java.io.InputStream
    public int read() {
        F f3 = this.f13987b;
        if (f3.f13990f) {
            throw new IOException("closed");
        }
        C0870l c0870l = f3.f13989e;
        if (c0870l.size() == 0 && f3.f13988b.read(c0870l, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
            return -1;
        }
        return c0870l.readByte() & 255;
    }

    public String toString() {
        return this.f13987b + ".inputStream()";
    }

    @Override // java.io.InputStream
    public int read(byte[] data, int i2, int i7) {
        kotlin.jvm.internal.j.checkNotNullParameter(data, "data");
        F f3 = this.f13987b;
        if (!f3.f13990f) {
            AbstractC0860b.checkOffsetAndCount(data.length, i2, i7);
            C0870l c0870l = f3.f13989e;
            if (c0870l.size() == 0 && f3.f13988b.read(c0870l, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
                return -1;
            }
            return c0870l.read(data, i2, i7);
        }
        throw new IOException("closed");
    }
}
