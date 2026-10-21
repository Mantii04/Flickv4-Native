package o2;

/* renamed from: o2.f, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1432f implements InterfaceC1427a {
    @Override // o2.InterfaceC1427a
    public int getElementSizeInBytes() {
        return 1;
    }

    @Override // o2.InterfaceC1427a
    public String getTag() {
        return "ByteArrayPool";
    }

    @Override // o2.InterfaceC1427a
    public int getArrayLength(byte[] bArr) {
        return bArr.length;
    }

    @Override // o2.InterfaceC1427a
    public byte[] newArray(int i2) {
        return new byte[i2];
    }
}
