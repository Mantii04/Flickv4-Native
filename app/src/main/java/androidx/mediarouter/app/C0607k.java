package androidx.mediarouter.app;

/* renamed from: androidx.mediarouter.app.k, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0607k implements p0 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ f1.U f7836a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ D f7837b;

    public C0607k(D d7, f1.U u6) {
        this.f7837b = d7;
        this.f7836a = u6;
    }

    public void onAnimationEnd() {
        D d7 = this.f7837b;
        d7.f7629U.remove(this.f7836a);
        d7.f7625Q.notifyDataSetChanged();
    }
}
