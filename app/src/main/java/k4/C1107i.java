package k4;

import android.content.Context;
import android.content.SharedPreferences;

/* renamed from: k4.i, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1107i {
    public C1107i(kotlin.jvm.internal.g gVar) {
    }

    public final C1108j getInstance(Context context) {
        C1108j c1108j;
        C1108j c1108j2;
        kotlin.jvm.internal.j.checkNotNullParameter(context, "context");
        c1108j = C1108j.f17305a;
        if (c1108j != null) {
            return c1108j;
        }
        synchronized (this) {
            c1108j2 = C1108j.f17305a;
            if (c1108j2 == null) {
                c1108j2 = new C1108j(null);
                C1108j.f17305a = c1108j2;
                SharedPreferences sharedPreferences = context.getSharedPreferences("com.skydoves.powerspinenr", 0);
                kotlin.jvm.internal.j.checkNotNullExpressionValue(sharedPreferences, "context.getSharedPrefere…r\", Context.MODE_PRIVATE)");
                C1108j.f17306b = sharedPreferences;
            }
        }
        return c1108j2;
    }
}
