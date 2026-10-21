package x3;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;

/* renamed from: x3.f, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC1832f {
    public static Activity getActivity(Context context) {
        while (context instanceof ContextWrapper) {
            if (context instanceof Activity) {
                return (Activity) context;
            }
            context = ((ContextWrapper) context).getBaseContext();
        }
        return null;
    }
}
