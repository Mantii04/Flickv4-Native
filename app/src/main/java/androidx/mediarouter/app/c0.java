package androidx.mediarouter.app;

import android.view.View;

/* loaded from: classes.dex */
public final class c0 implements View.OnClickListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ d0 f7771b;

    public c0(d0 d0Var) {
        this.f7771b = d0Var;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        d0 d0Var = this.f7771b;
        d0Var.f7773A.f7835m.f7871n.transferToRoute(d0Var.f7779z);
        d0Var.f7775v.setVisibility(4);
        d0Var.f7776w.setVisibility(0);
    }
}
