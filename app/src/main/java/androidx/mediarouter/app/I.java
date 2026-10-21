package androidx.mediarouter.app;

import android.view.View;

/* loaded from: classes.dex */
public final class I implements View.OnClickListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Q f7677b;

    public I(Q q6) {
        this.f7677b = q6;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.f7677b.dismiss();
    }
}
