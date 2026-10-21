package androidx.datastore.preferences.protobuf;

/* renamed from: androidx.datastore.preferences.protobuf.i, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0421i implements InterfaceC0427l {
    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Iterator
    public final Byte next() {
        return Byte.valueOf(((C0419h) this).nextByte());
    }
}
