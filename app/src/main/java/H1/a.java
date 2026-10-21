package H1;

import K1.E;

/* loaded from: classes.dex */
public final class a extends d {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(I1.h tracker) {
        super(tracker);
        kotlin.jvm.internal.j.checkNotNullParameter(tracker, "tracker");
    }

    @Override // H1.d
    public boolean hasConstraint(E workSpec) {
        kotlin.jvm.internal.j.checkNotNullParameter(workSpec, "workSpec");
        return workSpec.f1603j.requiresCharging();
    }

    @Override // H1.d
    public /* bridge */ /* synthetic */ boolean isConstrained(Object obj) {
        return isConstrained(((Boolean) obj).booleanValue());
    }

    public boolean isConstrained(boolean z6) {
        return !z6;
    }
}
