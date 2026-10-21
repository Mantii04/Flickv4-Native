package androidx.activity;

import android.window.BackEvent;
import android.window.OnBackAnimationCallback;

/* loaded from: classes.dex */
public final class v implements OnBackAnimationCallback {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ H5.l f4927a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ H5.l f4928b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ H5.a f4929c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ H5.a f4930d;

    public v(H5.l lVar, H5.l lVar2, H5.a aVar, H5.a aVar2) {
        this.f4927a = lVar;
        this.f4928b = lVar2;
        this.f4929c = aVar;
        this.f4930d = aVar2;
    }

    public void onBackCancelled() {
        this.f4930d.invoke();
    }

    public void onBackInvoked() {
        this.f4929c.invoke();
    }

    public void onBackProgressed(BackEvent backEvent) {
        kotlin.jvm.internal.j.checkNotNullParameter(backEvent, "backEvent");
        this.f4928b.invoke(new c(backEvent));
    }

    public void onBackStarted(BackEvent backEvent) {
        kotlin.jvm.internal.j.checkNotNullParameter(backEvent, "backEvent");
        this.f4927a.invoke(new c(backEvent));
    }
}
