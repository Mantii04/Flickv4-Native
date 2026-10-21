package x1;

import android.annotation.SuppressLint;
import android.view.View;

/* loaded from: classes.dex */
public abstract class T extends Q {

    /* renamed from: f, reason: collision with root package name */
    public static boolean f20793f = true;

    @SuppressLint({"NewApi"})
    public void setLeftTopRightBottom(View view, int i2, int i7, int i8, int i9) {
        if (f20793f) {
            try {
                S.a(view, i2, i7, i8, i9);
            } catch (NoSuchMethodError unused) {
                f20793f = false;
            }
        }
    }
}
