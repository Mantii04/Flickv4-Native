package H1;

import K1.E;
import android.os.Build;
import androidx.work.NetworkType;

/* loaded from: classes.dex */
public final class j extends d {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j(I1.h tracker) {
        super(tracker);
        kotlin.jvm.internal.j.checkNotNullParameter(tracker, "tracker");
    }

    @Override // H1.d
    public boolean hasConstraint(E workSpec) {
        kotlin.jvm.internal.j.checkNotNullParameter(workSpec, "workSpec");
        NetworkType requiredNetworkType = workSpec.f1603j.getRequiredNetworkType();
        if (requiredNetworkType != NetworkType.f8260f) {
            return Build.VERSION.SDK_INT >= 30 && requiredNetworkType == NetworkType.f8263n;
        }
        return true;
    }

    @Override // H1.d
    public boolean isConstrained(G1.b value) {
        kotlin.jvm.internal.j.checkNotNullParameter(value, "value");
        return !value.isConnected() || value.isMetered();
    }
}
