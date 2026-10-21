package androidx.mediarouter.app;

import android.view.View;

/* loaded from: classes.dex */
public final class M implements View.OnClickListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ f1.U f7682b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ N f7683e;

    public M(N n7, f1.U u6) {
        this.f7683e = n7;
        this.f7682b = u6;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        N n7 = this.f7683e;
        Q q6 = n7.f7720y.f7727j;
        f1.U u6 = this.f7682b;
        q6.f7738w = u6;
        u6.select();
        n7.f7717v.setVisibility(4);
        n7.f7718w.setVisibility(0);
    }
}
