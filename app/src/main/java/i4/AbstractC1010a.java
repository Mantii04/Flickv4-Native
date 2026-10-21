package i4;

import android.view.View;
import j4.C1054a;

/* renamed from: i4.a, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC1010a {
    public static void setAlpha(View view, float f3) {
        if (C1054a.f16986w) {
            C1054a.wrap(view).setAlpha(f3);
        } else {
            view.setAlpha(f3);
        }
    }

    public static void setTranslationX(View view, float f3) {
        if (C1054a.f16986w) {
            C1054a.wrap(view).setTranslationX(f3);
        } else {
            view.setTranslationX(f3);
        }
    }
}
