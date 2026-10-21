package g;

/* loaded from: classes.dex */
public abstract class o extends k {

    /* renamed from: H, reason: collision with root package name */
    public int[][] f16388H;

    @Override // g.k
    public void growArray(int i2, int i7) {
        super.growArray(i2, i7);
        int[][] iArr = new int[i7][];
        System.arraycopy(this.f16388H, 0, iArr, 0, i2);
        this.f16388H = iArr;
    }
}
