package G3;

import android.graphics.Matrix;
import android.graphics.Path;

/* loaded from: classes2.dex */
public final class x extends y {

    /* renamed from: b, reason: collision with root package name */
    public float f1167b;

    /* renamed from: c, reason: collision with root package name */
    public float f1168c;

    @Override // G3.y
    public void applyToPath(Matrix matrix, Path path) {
        Matrix matrix2 = this.f1169a;
        matrix.invert(matrix2);
        path.transform(matrix2);
        path.lineTo(this.f1167b, this.f1168c);
        path.transform(matrix);
    }
}
