package x1;

import android.annotation.SuppressLint;
import android.os.Build;
import android.view.View;

/* loaded from: classes.dex */
public class W extends T {

    /* renamed from: g, reason: collision with root package name */
    public static boolean f20794g = true;

    @Override // x1.O
    @SuppressLint({"NewApi"})
    public void setTransitionVisibility(View view, int i2) {
        if (Build.VERSION.SDK_INT == 28) {
            super.setTransitionVisibility(view, i2);
        } else if (f20794g) {
            try {
                V.a(view, i2);
            } catch (NoSuchMethodError unused) {
                f20794g = false;
            }
        }
    }
}
