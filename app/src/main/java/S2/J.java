package S2;

import a3.InterfaceC0386d;
import java.io.Closeable;
import java.io.IOException;

/* loaded from: classes.dex */
public abstract class J implements Closeable {
    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        ((a3.r) ((InterfaceC0386d) ((p) this).f3366n.get())).close();
    }
}
