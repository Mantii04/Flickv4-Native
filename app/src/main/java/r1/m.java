package r1;

import java.io.Closeable;

/* loaded from: classes.dex */
public interface m extends Closeable {
    f getWritableDatabase();

    void setWriteAheadLoggingEnabled(boolean z6);
}
