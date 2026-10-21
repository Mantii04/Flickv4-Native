package l;

import android.R;
import android.view.View;
import android.view.Window;
import k.C1069a;

/* loaded from: classes.dex */
public final class p2 implements View.OnClickListener {

    /* renamed from: b, reason: collision with root package name */
    public final C1069a f17965b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ r2 f17966e;

    public p2(r2 r2Var) {
        this.f17966e = r2Var;
        this.f17965b = new C1069a(r2Var.f17984a.getContext(), 0, R.id.home, 0, 0, r2Var.f17991h);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        r2 r2Var = this.f17966e;
        Window.Callback callback = r2Var.f17994k;
        if (callback == null || !r2Var.f17995l) {
            return;
        }
        callback.onMenuItemSelected(0, this.f17965b);
    }
}
