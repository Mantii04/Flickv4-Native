package androidx.fragment.app;

import android.util.Log;
import java.io.Writer;

/* loaded from: classes.dex */
public final class G0 extends Writer {

    /* renamed from: e, reason: collision with root package name */
    public final StringBuilder f6120e = new StringBuilder(128);

    /* renamed from: b, reason: collision with root package name */
    public final String f6119b = "FragmentManager";

    public final void a() {
        StringBuilder sb = this.f6120e;
        if (sb.length() > 0) {
            Log.d(this.f6119b, sb.toString());
            sb.delete(0, sb.length());
        }
    }

    @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        a();
    }

    @Override // java.io.Writer, java.io.Flushable
    public void flush() {
        a();
    }

    @Override // java.io.Writer
    public void write(char[] cArr, int i2, int i7) {
        for (int i8 = 0; i8 < i7; i8++) {
            char c7 = cArr[i2 + i8];
            if (c7 == '\n') {
                a();
            } else {
                this.f6120e.append(c7);
            }
        }
    }
}
