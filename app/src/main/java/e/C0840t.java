package e;

import android.os.Bundle;

/* renamed from: e.t, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0840t implements q1.f {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ AbstractActivityC0842v f13868a;

    public C0840t(AbstractActivityC0842v abstractActivityC0842v) {
        this.f13868a = abstractActivityC0842v;
    }

    @Override // q1.f
    public Bundle saveState() {
        Bundle bundle = new Bundle();
        this.f13868a.getDelegate().onSaveInstanceState(bundle);
        return bundle;
    }
}
