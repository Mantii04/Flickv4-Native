package androidx.fragment.app;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;

/* loaded from: classes.dex */
public abstract class K {
    public static int a(Context context, int i2) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(R.style.Animation.Activity, new int[]{i2});
        int resourceId = obtainStyledAttributes.getResourceId(0, -1);
        obtainStyledAttributes.recycle();
        return resourceId;
    }
}
