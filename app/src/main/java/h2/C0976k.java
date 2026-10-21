package h2;

import java.io.FilterInputStream;
import java.io.IOException;
import java.net.HttpURLConnection;

/* renamed from: h2.k, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0976k extends FilterInputStream {

    /* renamed from: b, reason: collision with root package name */
    public final HttpURLConnection f16512b;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C0976k(java.net.HttpURLConnection r2) {
        /*
            r1 = this;
            java.io.InputStream r0 = r2.getInputStream()     // Catch: java.io.IOException -> L5
            goto L9
        L5:
            java.io.InputStream r0 = r2.getErrorStream()
        L9:
            r1.<init>(r0)
            r1.f16512b = r2
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: h2.C0976k.<init>(java.net.HttpURLConnection):void");
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        super.close();
        this.f16512b.disconnect();
    }
}
