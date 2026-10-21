package androidx.mediarouter.app;

import android.view.View;

/* loaded from: classes.dex */
public final class r implements View.OnClickListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ D f7901b;

    public r(D d7) {
        this.f7901b = d7;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        D d7 = this.f7901b;
        boolean z6 = d7.f7651p0;
        d7.f7651p0 = !z6;
        if (!z6) {
            d7.f7624P.setVisibility(0);
        }
        d7.f7663v0 = d7.f7651p0 ? d7.f7665w0 : d7.f7667x0;
        d7.p(true);
    }
}
