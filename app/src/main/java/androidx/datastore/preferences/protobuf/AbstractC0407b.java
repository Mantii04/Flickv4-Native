package androidx.datastore.preferences.protobuf;

import java.io.IOException;
import java.io.OutputStream;
import java.util.List;
import java.util.logging.Logger;

/* renamed from: androidx.datastore.preferences.protobuf.b, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0407b implements InterfaceC0406a0 {
    protected int memoizedHashCode = 0;

    public static <T> void addAll(Iterable<T> iterable, List<? super T> list) {
        AbstractC0405a.addAll(iterable, list);
    }

    public final int a(InterfaceC0428l0 interfaceC0428l0) {
        F f3 = (F) this;
        int i2 = f3.memoizedSerializedSize;
        if (i2 != -1) {
            return i2;
        }
        int serializedSize = interfaceC0428l0.getSerializedSize(this);
        f3.memoizedSerializedSize = serializedSize;
        return serializedSize;
    }

    public void writeTo(OutputStream outputStream) throws IOException {
        F f3 = (F) this;
        int serializedSize = f3.getSerializedSize();
        Logger logger = AbstractC0434s.f5906b;
        if (serializedSize > 4096) {
            serializedSize = 4096;
        }
        AbstractC0434s newInstance = AbstractC0434s.newInstance(outputStream, serializedSize);
        f3.writeTo(newInstance);
        newInstance.flush();
    }
}
