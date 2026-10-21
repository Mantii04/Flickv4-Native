package M3;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import j.C1023f;

/* loaded from: classes2.dex */
public abstract class a {

    /* renamed from: a, reason: collision with root package name */
    public static final int[] f2105a = {R.attr.theme, com.google.android.material.R.attr.theme};

    /* renamed from: b, reason: collision with root package name */
    public static final int[] f2106b = {com.google.android.material.R.attr.materialThemeOverlay};

    public static Context wrap(Context context, AttributeSet attributeSet, int i2, int i7) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f2106b, i2, i7);
        int resourceId = obtainStyledAttributes.getResourceId(0, 0);
        obtainStyledAttributes.recycle();
        boolean z6 = (context instanceof C1023f) && ((C1023f) context).getThemeResId() == resourceId;
        if (resourceId == 0 || z6) {
            return context;
        }
        C1023f c1023f = new C1023f(context, resourceId);
        TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, f2105a);
        int resourceId2 = obtainStyledAttributes2.getResourceId(0, 0);
        int resourceId3 = obtainStyledAttributes2.getResourceId(1, 0);
        obtainStyledAttributes2.recycle();
        if (resourceId2 == 0) {
            resourceId2 = resourceId3;
        }
        if (resourceId2 != 0) {
            c1023f.getTheme().applyStyle(resourceId2, true);
        }
        return c1023f;
    }
}
