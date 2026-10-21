package o2;

/* renamed from: o2.i, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1435i implements InterfaceC1427a {
    @Override // o2.InterfaceC1427a
    public int getElementSizeInBytes() {
        return 4;
    }

    @Override // o2.InterfaceC1427a
    public String getTag() {
        return "IntegerArrayPool";
    }

    @Override // o2.InterfaceC1427a
    public int getArrayLength(int[] iArr) {
        return iArr.length;
    }

    @Override // o2.InterfaceC1427a
    public int[] newArray(int i2) {
        return new int[i2];
    }
}
