package androidx.datastore.preferences.protobuf;

import java.io.IOException;

/* renamed from: androidx.datastore.preferences.protobuf.l0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public interface InterfaceC0428l0 {
    boolean equals(Object obj, Object obj2);

    int getSerializedSize(Object obj);

    int hashCode(Object obj);

    boolean isInitialized(Object obj);

    void makeImmutable(Object obj);

    void mergeFrom(Object obj, InterfaceC0426k0 interfaceC0426k0, C0438w c0438w) throws IOException;

    void mergeFrom(Object obj, Object obj2);

    Object newInstance();

    void writeTo(Object obj, L0 l02) throws IOException;
}
