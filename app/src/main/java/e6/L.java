package e6;

import java.io.Closeable;
import java.io.IOException;

/* loaded from: classes2.dex */
public interface L extends Closeable {
    @Override // java.io.Closeable, java.lang.AutoCloseable
    void close() throws IOException;

    long read(C0870l c0870l, long j7) throws IOException;

    O timeout();
}
