package androidx.datastore.preferences.protobuf;

/* loaded from: classes.dex */
public abstract class w0 {
    public final boolean a(Object obj, InterfaceC0426k0 interfaceC0426k0) {
        int tag = interfaceC0426k0.getTag();
        int tagFieldNumber = K0.getTagFieldNumber(tag);
        int tagWireType = K0.getTagWireType(tag);
        if (tagWireType == 0) {
            ((x0) obj).b(tagFieldNumber << 3, Long.valueOf(interfaceC0426k0.readInt64()));
            return true;
        }
        if (tagWireType == 1) {
            ((x0) obj).b((tagFieldNumber << 3) | 1, Long.valueOf(interfaceC0426k0.readFixed64()));
            return true;
        }
        if (tagWireType == 2) {
            ((x0) obj).b((tagFieldNumber << 3) | 2, interfaceC0426k0.readBytes());
            return true;
        }
        if (tagWireType != 3) {
            if (tagWireType == 4) {
                return false;
            }
            if (tagWireType != 5) {
                throw InvalidProtocolBufferException.b();
            }
            ((x0) obj).b((tagFieldNumber << 3) | 5, Integer.valueOf(interfaceC0426k0.readFixed32()));
            return true;
        }
        x0 a7 = x0.a();
        int i2 = tagFieldNumber << 3;
        int i7 = i2 | 4;
        while (interfaceC0426k0.getFieldNumber() != Integer.MAX_VALUE && a(a7, interfaceC0426k0)) {
        }
        if (i7 != interfaceC0426k0.getTag()) {
            throw new InvalidProtocolBufferException("Protocol message end-group tag did not match expected tag.");
        }
        a7.makeImmutable();
        ((x0) obj).b(i2 | 3, a7);
        return true;
    }

    public abstract x0 b();
}
