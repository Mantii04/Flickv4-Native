package h1;

import android.content.Context;
import android.content.SharedPreferences;

/* renamed from: h1.d, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0963d {
    public static SharedPreferences getDefaultSharedPreferences(Context context) {
        return context.getSharedPreferences(context.getPackageName() + "_preferences", 0);
    }
}
