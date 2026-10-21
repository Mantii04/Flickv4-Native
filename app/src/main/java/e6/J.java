package e6;

import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;

/* loaded from: classes2.dex */
public interface J extends Closeable, Flushable {
    @Override // java.io.Closeable, java.lang.AutoCloseable
    void close() throws IOException;

    void flush() throws IOException;

    O timeout();

    void write(C0870l c0870l, long j7) throws IOException;
}
