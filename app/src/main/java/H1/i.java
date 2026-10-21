package H1;

import B1.t;
import K1.E;
import android.os.Build;
import androidx.work.NetworkType;

/* loaded from: classes.dex */
public final class i extends d {

    /* renamed from: f, reason: collision with root package name */
    public static final String f1193f;

    static {
        new h(null);
        String tagWithPrefix = t.tagWithPrefix("NetworkNotRoamingCtrlr");
        kotlin.jvm.internal.j.checkNotNullExpressionValue(tagWithPrefix, "tagWithPrefix(\"NetworkNotRoamingCtrlr\")");
        f1193f = tagWithPrefix;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i(I1.h tracker) {
        super(tracker);
        kotlin.jvm.internal.j.checkNotNullParameter(tracker, "tracker");
    }

    @Override // H1.d
    public boolean hasConstraint(E workSpec) {
        kotlin.jvm.internal.j.checkNotNullParameter(workSpec, "workSpec");
        return workSpec.f1603j.getRequiredNetworkType() == NetworkType.f8261j;
    }

    @Override // H1.d
    public boolean isConstrained(G1.b value) {
        kotlin.jvm.internal.j.checkNotNullParameter(value, "value");
        if (Build.VERSION.SDK_INT >= 24) {
            return (value.isConnected() && value.isNotRoaming()) ? false : true;
        }
        t.get().debug(f1193f, "Not-roaming network constraint is not supported before API 24, only checking for connected state.");
        return !value.isConnected();
    }
}
