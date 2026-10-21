package e;

import android.content.Context;
import c.InterfaceC0667b;

/* renamed from: e.u, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0841u implements InterfaceC0667b {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ AbstractActivityC0842v f13870a;

    public C0841u(AbstractActivityC0842v abstractActivityC0842v) {
        this.f13870a = abstractActivityC0842v;
    }

    @Override // c.InterfaceC0667b
    public void onContextAvailable(Context context) {
        AbstractActivityC0842v abstractActivityC0842v = this.f13870a;
        AbstractC0813A delegate = abstractActivityC0842v.getDelegate();
        delegate.installViewFactory();
        delegate.onCreate(abstractActivityC0842v.getSavedStateRegistry().consumeRestoredStateForKey("androidx:appcompat"));
    }
}
