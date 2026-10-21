package androidx.datastore.preferences.protobuf;

import java.util.List;

/* loaded from: classes.dex */
public interface K extends List {
    void add(ByteString byteString);

    Object getRaw(int i2);

    List<?> getUnderlyingElements();

    K getUnmodifiableView();
}
