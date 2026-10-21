package r1;

import java.io.Closeable;

/* loaded from: classes.dex */
public interface n extends Closeable {
    void bindBlob(int i2, byte[] bArr);

    void bindDouble(int i2, double d7);

    void bindLong(int i2, long j7);

    void bindNull(int i2);

    void bindString(int i2, String str);
}
