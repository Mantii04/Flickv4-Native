package G3;

/* renamed from: G3.e, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0106e extends AbstractC0105d {

    /* renamed from: a, reason: collision with root package name */
    public final float f1072a = -1.0f;

    @Override // G3.AbstractC0105d
    public void getCornerPath(A a7, float f3, float f7, float f8) {
        a7.reset(0.0f, f8 * f7, 180.0f, 180.0f - f3);
        double d7 = f8;
        double d8 = f7;
        a7.lineTo((float) (Math.sin(Math.toRadians(f3)) * d7 * d8), (float) (Math.sin(Math.toRadians(90.0f - f3)) * d7 * d8));
    }
}
