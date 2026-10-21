package a2;

import f2.AbstractC0921b;

/* renamed from: a2.c, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0382c {

    /* renamed from: a, reason: collision with root package name */
    public final float[] f4638a;

    /* renamed from: b, reason: collision with root package name */
    public final int[] f4639b;

    public C0382c(float[] fArr, int[] iArr) {
        this.f4638a = fArr;
        this.f4639b = iArr;
    }

    public int[] getColors() {
        return this.f4639b;
    }

    public float[] getPositions() {
        return this.f4638a;
    }

    public int getSize() {
        return this.f4639b.length;
    }

    public void lerp(C0382c c0382c, C0382c c0382c2, float f3) {
        int length = c0382c.f4639b.length;
        int length2 = c0382c2.f4639b.length;
        int[] iArr = c0382c.f4639b;
        int[] iArr2 = c0382c2.f4639b;
        if (length != length2) {
            StringBuilder sb = new StringBuilder("Cannot interpolate between gradients. Lengths vary (");
            sb.append(iArr.length);
            sb.append(" vs ");
            throw new IllegalArgumentException(A.i.m(sb, iArr2.length, ")"));
        }
        for (int i2 = 0; i2 < iArr.length; i2++) {
            this.f4638a[i2] = f2.g.lerp(c0382c.f4638a[i2], c0382c2.f4638a[i2], f3);
            this.f4639b[i2] = AbstractC0921b.evaluate(f3, iArr[i2], iArr2[i2]);
        }
    }
}
