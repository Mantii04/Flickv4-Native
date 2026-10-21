package androidx.mediarouter.app;

import android.view.View;

/* loaded from: classes.dex */
public final class T implements View.OnClickListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ m0 f7743b;

    public T(m0 m0Var) {
        this.f7743b = m0Var;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.f7743b.dismiss();
    }
}
