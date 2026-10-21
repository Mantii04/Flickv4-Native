package g1;

/* renamed from: g1.d, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0944d {
    public boolean isAllowed(int i2, float[] fArr) {
        float f3 = fArr[2];
        if (f3 < 0.95f && f3 > 0.05f) {
            float f7 = fArr[0];
            if (f7 < 10.0f || f7 > 37.0f || fArr[1] > 0.82f) {
                return true;
            }
        }
        return false;
    }
}
