package j1;

import android.content.Context;
import androidx.privacysandbox.ads.adservices.java.measurement.MeasurementManagerFutures$Api33Ext5JavaImpl;
import k1.AbstractC1093d;
import kotlin.jvm.internal.g;
import kotlin.jvm.internal.j;

/* renamed from: j1.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1038a {
    public C1038a(g gVar) {
    }

    public final AbstractC1039b from(Context context) {
        j.checkNotNullParameter(context, "context");
        AbstractC1093d obtain = AbstractC1093d.f17249a.obtain(context);
        if (obtain != null) {
            return new MeasurementManagerFutures$Api33Ext5JavaImpl(obtain);
        }
        return null;
    }
}
