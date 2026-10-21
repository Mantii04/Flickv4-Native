package G3;

import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.RectF;

/* loaded from: classes2.dex */
public final class w extends y {

    /* renamed from: h, reason: collision with root package name */
    public static final RectF f1160h = new RectF();

    /* renamed from: b, reason: collision with root package name */
    public final float f1161b;

    /* renamed from: c, reason: collision with root package name */
    public final float f1162c;

    /* renamed from: d, reason: collision with root package name */
    public final float f1163d;

    /* renamed from: e, reason: collision with root package name */
    public final float f1164e;

    /* renamed from: f, reason: collision with root package name */
    public float f1165f;

    /* renamed from: g, reason: collision with root package name */
    public float f1166g;

    public w(float f3, float f7, float f8, float f9) {
        this.f1161b = f3;
        this.f1162c = f7;
        this.f1163d = f8;
        this.f1164e = f9;
    }

    @Override // G3.y
    public void applyToPath(Matrix matrix, Path path) {
        Matrix matrix2 = this.f1169a;
        matrix.invert(matrix2);
        path.transform(matrix2);
        RectF rectF = f1160h;
        rectF.set(this.f1161b, this.f1162c, this.f1163d, this.f1164e);
        path.arcTo(rectF, this.f1165f, this.f1166g, false);
        path.transform(matrix);
    }
}
