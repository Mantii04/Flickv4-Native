package androidx.mediarouter.app;

import android.view.View;

/* loaded from: classes.dex */
public final class X implements View.OnClickListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Y f7750b;

    public X(Y y6) {
        this.f7750b = y6;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int max;
        Y y6 = this.f7750b;
        m0 m0Var = y6.f7754x;
        if (m0Var.f7848F != null) {
            m0Var.f7843A.removeMessages(2);
        }
        m0 m0Var2 = y6.f7754x;
        m0Var2.f7848F = y6.f7751u;
        boolean isActivated = view.isActivated();
        boolean z6 = !isActivated;
        if (isActivated) {
            Integer num = (Integer) m0Var2.f7849G.get(y6.f7751u.getId());
            max = num == null ? 1 : Math.max(1, num.intValue());
        } else {
            max = 0;
        }
        y6.o(z6);
        y6.f7753w.setProgress(max);
        y6.f7751u.requestSetVolume(max);
        m0Var2.f7843A.sendEmptyMessageDelayed(2, 500L);
    }
}
