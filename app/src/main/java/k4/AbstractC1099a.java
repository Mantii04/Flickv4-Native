package k4;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.view.View;

/* renamed from: k4.a, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC1099a {
    public static final Drawable contextDrawable(Context contextDrawable, int i2) {
        kotlin.jvm.internal.j.checkNotNullParameter(contextDrawable, "$this$contextDrawable");
        return A.h.getDrawable(contextDrawable, i2);
    }

    public static final int dp2Px(Context dp2Px, int i2) {
        kotlin.jvm.internal.j.checkNotNullParameter(dp2Px, "$this$dp2Px");
        Resources resources = dp2Px.getResources();
        kotlin.jvm.internal.j.checkNotNullExpressionValue(resources, "resources");
        return (int) (i2 * resources.getDisplayMetrics().density);
    }

    public static final int dp2Px(View dp2Px, int i2) {
        kotlin.jvm.internal.j.checkNotNullParameter(dp2Px, "$this$dp2Px");
        Context context = dp2Px.getContext();
        kotlin.jvm.internal.j.checkNotNullExpressionValue(context, "context");
        return dp2Px(context, i2);
    }

    public static final int dp2Px(Context dp2Px, float f3) {
        kotlin.jvm.internal.j.checkNotNullParameter(dp2Px, "$this$dp2Px");
        Resources resources = dp2Px.getResources();
        kotlin.jvm.internal.j.checkNotNullExpressionValue(resources, "resources");
        return (int) (f3 * resources.getDisplayMetrics().density);
    }

    public static final int dp2Px(View dp2Px, float f3) {
        kotlin.jvm.internal.j.checkNotNullParameter(dp2Px, "$this$dp2Px");
        Context context = dp2Px.getContext();
        kotlin.jvm.internal.j.checkNotNullExpressionValue(context, "context");
        return dp2Px(context, f3);
    }
}
