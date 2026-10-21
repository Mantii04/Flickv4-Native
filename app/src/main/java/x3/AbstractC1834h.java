package x3;

import M.H0;
import android.R;
import android.content.Context;
import android.os.Build;
import android.view.Window;
import r3.AbstractC1595a;

/* renamed from: x3.h, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC1834h {
    public static void applyEdgeToEdge(Window window, boolean z6, Integer num, Integer num2) {
        int i2 = Build.VERSION.SDK_INT;
        boolean z7 = false;
        boolean z8 = num == null || num.intValue() == 0;
        boolean z9 = num2 == null || num2.intValue() == 0;
        if (z8 || z9) {
            int color = AbstractC1595a.getColor(window.getContext(), R.attr.colorBackground, -16777216);
            if (z8) {
                num = Integer.valueOf(color);
            }
            if (z9) {
                num2 = Integer.valueOf(color);
            }
        }
        H0.setDecorFitsSystemWindows(window, !z6);
        int color2 = z6 ? 0 : AbstractC1595a.getColor(window.getContext(), R.attr.statusBarColor, -16777216);
        Context context = window.getContext();
        int color3 = (!z6 || i2 >= 27) ? z6 ? 0 : AbstractC1595a.getColor(context, R.attr.navigationBarColor, -16777216) : D.a.setAlphaComponent(AbstractC1595a.getColor(context, R.attr.navigationBarColor, -16777216), 128);
        window.setStatusBarColor(color2);
        window.setNavigationBarColor(color3);
        setLightStatusBar(window, AbstractC1595a.isColorLight(color2) || (color2 == 0 && AbstractC1595a.isColorLight(num.intValue())));
        boolean isColorLight = AbstractC1595a.isColorLight(num2.intValue());
        if (AbstractC1595a.isColorLight(color3) || (color3 == 0 && isColorLight)) {
            z7 = true;
        }
        setLightNavigationBar(window, z7);
    }

    public static void setLightNavigationBar(Window window, boolean z6) {
        H0.getInsetsController(window, window.getDecorView()).setAppearanceLightNavigationBars(z6);
    }

    public static void setLightStatusBar(Window window, boolean z6) {
        H0.getInsetsController(window, window.getDecorView()).setAppearanceLightStatusBars(z6);
    }
}
