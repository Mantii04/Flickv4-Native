package h5;

import android.content.Context;

/* renamed from: h5.d, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC0990d {
    public static int getHeightInPercent(Context context, int i2) {
        return (context.getResources().getDisplayMetrics().heightPixels * i2) / 100;
    }

    public static int getWidthInPercent(Context context, int i2) {
        return (context.getResources().getDisplayMetrics().widthPixels * i2) / 100;
    }
}
