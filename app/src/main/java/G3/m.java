package G3;

/* loaded from: classes2.dex */
public final class m extends AbstractC0105d {

    /* renamed from: a, reason: collision with root package name */
    public final float f1116a = -1.0f;

    @Override // G3.AbstractC0105d
    public void getCornerPath(A a7, float f3, float f7, float f8) {
        a7.reset(0.0f, f8 * f7, 180.0f, 180.0f - f3);
        float f9 = f8 * 2.0f * f7;
        a7.addArc(0.0f, 0.0f, f9, f9, 180.0f, f3);
    }
}
