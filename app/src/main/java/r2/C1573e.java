package r2;

import java.nio.ByteBuffer;

/* renamed from: r2.e, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1573e implements InterfaceC1575g {
    @Override // r2.InterfaceC1575g
    public Class<ByteBuffer> getDataClass() {
        return ByteBuffer.class;
    }

    @Override // r2.InterfaceC1575g
    public ByteBuffer convert(byte[] bArr) {
        return ByteBuffer.wrap(bArr);
    }
}
