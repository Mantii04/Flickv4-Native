package H1;

import K1.E;
import android.os.Build;
import androidx.work.NetworkType;

/* loaded from: classes.dex */
public final class e extends d {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(I1.h tracker) {
        super(tracker);
        kotlin.jvm.internal.j.checkNotNullParameter(tracker, "tracker");
    }

    @Override // H1.d
    public boolean hasConstraint(E workSpec) {
        kotlin.jvm.internal.j.checkNotNullParameter(workSpec, "workSpec");
        return workSpec.f1603j.getRequiredNetworkType() == NetworkType.f8259e;
    }

    @Override // H1.d
    public boolean isConstrained(G1.b value) {
        kotlin.jvm.internal.j.checkNotNullParameter(value, "value");
        return Build.VERSION.SDK_INT >= 26 ? (value.isConnected() && value.isValidated()) ? false : true : !value.isConnected();
    }
}
