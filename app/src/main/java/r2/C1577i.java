package r2;

import java.io.ByteArrayInputStream;
import java.io.InputStream;

/* renamed from: r2.i, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1577i implements InterfaceC1575g {
    @Override // r2.InterfaceC1575g
    public Class<InputStream> getDataClass() {
        return InputStream.class;
    }

    @Override // r2.InterfaceC1575g
    public InputStream convert(byte[] bArr) {
        return new ByteArrayInputStream(bArr);
    }
}
