package x1;

import android.annotation.SuppressLint;
import android.graphics.Matrix;
import android.view.View;

/* loaded from: classes.dex */
public abstract class Q extends O {

    /* renamed from: d, reason: collision with root package name */
    public static boolean f20791d = true;

    /* renamed from: e, reason: collision with root package name */
    public static boolean f20792e = true;

    @SuppressLint({"NewApi"})
    public void transformMatrixToGlobal(View view, Matrix matrix) {
        if (f20791d) {
            try {
                P.b(view, matrix);
            } catch (NoSuchMethodError unused) {
                f20791d = false;
            }
        }
    }

    @SuppressLint({"NewApi"})
    public void transformMatrixToLocal(View view, Matrix matrix) {
        if (f20792e) {
            try {
                P.c(view, matrix);
            } catch (NoSuchMethodError unused) {
                f20792e = false;
            }
        }
    }
}
