package H1;

import B1.t;
import K1.E;
import android.os.Build;
import androidx.work.NetworkType;

/* loaded from: classes.dex */
public final class g extends d {

    /* renamed from: f, reason: collision with root package name */
    public static final String f1192f;

    static {
        new f(null);
        String tagWithPrefix = t.tagWithPrefix("NetworkMeteredCtrlr");
        kotlin.jvm.internal.j.checkNotNullExpressionValue(tagWithPrefix, "tagWithPrefix(\"NetworkMeteredCtrlr\")");
        f1192f = tagWithPrefix;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g(I1.h tracker) {
        super(tracker);
        kotlin.jvm.internal.j.checkNotNullParameter(tracker, "tracker");
    }

    @Override // H1.d
    public boolean hasConstraint(E workSpec) {
        kotlin.jvm.internal.j.checkNotNullParameter(workSpec, "workSpec");
        return workSpec.f1603j.getRequiredNetworkType() == NetworkType.f8262m;
    }

    @Override // H1.d
    public boolean isConstrained(G1.b value) {
        kotlin.jvm.internal.j.checkNotNullParameter(value, "value");
        if (Build.VERSION.SDK_INT >= 26) {
            return (value.isConnected() && value.isMetered()) ? false : true;
        }
        t.get().debug(f1192f, "Metered network constraint is not supported before API 26, only checking for connected state.");
        return !value.isConnected();
    }
}
