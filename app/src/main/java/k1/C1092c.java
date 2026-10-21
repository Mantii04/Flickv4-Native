package k1;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.Log;
import i1.C1004b;
import kotlin.jvm.internal.g;
import kotlin.jvm.internal.j;

/* renamed from: k1.c, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1092c {
    public C1092c(g gVar) {
    }

    @SuppressLint({"NewApi", "ClassVerificationFailure"})
    public final AbstractC1093d obtain(Context context) {
        j.checkNotNullParameter(context, "context");
        StringBuilder sb = new StringBuilder("AdServicesInfo.version=");
        C1004b c1004b = C1004b.f16659a;
        sb.append(c1004b.version());
        Log.d("MeasurementManager", sb.toString());
        if (c1004b.version() >= 5) {
            return new C1091b(context);
        }
        return null;
    }
}
