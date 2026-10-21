package v2;

import G2.r;
import n2.InterfaceC1391M;

/* renamed from: v2.c, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1760c implements InterfaceC1391M {

    /* renamed from: b, reason: collision with root package name */
    public final byte[] f20624b;

    public C1760c(byte[] bArr) {
        this.f20624b = (byte[]) r.checkNotNull(bArr);
    }

    @Override // n2.InterfaceC1391M
    public Class<byte[]> getResourceClass() {
        return byte[].class;
    }

    @Override // n2.InterfaceC1391M
    public int getSize() {
        return this.f20624b.length;
    }

    @Override // n2.InterfaceC1391M
    public byte[] get() {
        return this.f20624b;
    }

    @Override // n2.InterfaceC1391M
    public void recycle() {
    }
}
