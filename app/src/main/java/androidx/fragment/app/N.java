package androidx.fragment.app;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MenuItem;
import android.view.View;

/* loaded from: classes.dex */
public final class N {

    /* renamed from: a, reason: collision with root package name */
    public final P f6147a;

    public N(P p6) {
        this.f6147a = p6;
    }

    public static N createController(P p6) {
        return new N((P) L.h.checkNotNull(p6, "callbacks == null"));
    }

    public void attachHost(C c7) {
        P p6 = this.f6147a;
        p6.f6152j.b(p6, p6, c7);
    }

    public void dispatchActivityCreated() {
        C0469j0 c0469j0 = this.f6147a.f6152j;
        c0469j0.f6213E = false;
        c0469j0.f6214F = false;
        c0469j0.f6220L.f6277i = false;
        c0469j0.t(4);
    }

    public boolean dispatchContextItemSelected(MenuItem menuItem) {
        return this.f6147a.f6152j.i(menuItem);
    }

    public void dispatchCreate() {
        C0469j0 c0469j0 = this.f6147a.f6152j;
        c0469j0.f6213E = false;
        c0469j0.f6214F = false;
        c0469j0.f6220L.f6277i = false;
        c0469j0.t(1);
    }

    public void dispatchDestroy() {
        this.f6147a.f6152j.k();
    }

    public void dispatchPause() {
        this.f6147a.f6152j.t(5);
    }

    public void dispatchResume() {
        C0469j0 c0469j0 = this.f6147a.f6152j;
        c0469j0.f6213E = false;
        c0469j0.f6214F = false;
        c0469j0.f6220L.f6277i = false;
        c0469j0.t(7);
    }

    public void dispatchStart() {
        C0469j0 c0469j0 = this.f6147a.f6152j;
        c0469j0.f6213E = false;
        c0469j0.f6214F = false;
        c0469j0.f6220L.f6277i = false;
        c0469j0.t(5);
    }

    public void dispatchStop() {
        C0469j0 c0469j0 = this.f6147a.f6152j;
        c0469j0.f6214F = true;
        c0469j0.f6220L.f6277i = true;
        c0469j0.t(4);
    }

    public boolean execPendingActions() {
        return this.f6147a.f6152j.w(true);
    }

    public AbstractC0467i0 getSupportFragmentManager() {
        return this.f6147a.f6152j;
    }

    public void noteStateNotSaved() {
        this.f6147a.f6152j.F();
    }

    public View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        return this.f6147a.f6152j.f6227f.onCreateView(view, str, context, attributeSet);
    }
}
