package G3;

import android.graphics.Canvas;
import android.graphics.Matrix;

/* loaded from: classes2.dex */
public abstract class z {

    /* renamed from: b, reason: collision with root package name */
    public static final Matrix f1170b = new Matrix();

    /* renamed from: a, reason: collision with root package name */
    public final Matrix f1171a = new Matrix();

    public final void draw(F3.a aVar, int i2, Canvas canvas) {
        draw(f1170b, aVar, i2, canvas);
    }

    public abstract void draw(Matrix matrix, F3.a aVar, int i2, Canvas canvas);
}
