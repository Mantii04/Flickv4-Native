package androidx.mediarouter.app;

import android.view.View;

/* loaded from: classes.dex */
public final class U implements View.OnClickListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ m0 f7744b;

    public U(m0 m0Var) {
        this.f7744b = m0Var;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        m0 m0Var = this.f7744b;
        if (m0Var.f7874r.isSelected()) {
            m0Var.f7871n.unselect(2);
        }
        m0Var.dismiss();
    }
}
