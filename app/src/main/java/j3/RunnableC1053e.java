package j3;

import I3.n;
import M.AbstractC0181p0;
import W.l;
import android.view.View;
import com.google.android.material.behavior.SwipeDismissBehavior;

/* renamed from: j3.e, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class RunnableC1053e implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final View f16983b;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f16984e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ SwipeDismissBehavior f16985f;

    public RunnableC1053e(SwipeDismissBehavior swipeDismissBehavior, View view, boolean z6) {
        this.f16985f = swipeDismissBehavior;
        this.f16983b = view;
        this.f16984e = z6;
    }

    @Override // java.lang.Runnable
    public void run() {
        InterfaceC1052d interfaceC1052d;
        SwipeDismissBehavior swipeDismissBehavior = this.f16985f;
        l lVar = swipeDismissBehavior.f12447b;
        View view = this.f16983b;
        if (lVar != null && lVar.continueSettling(true)) {
            AbstractC0181p0.postOnAnimation(view, this);
        } else {
            if (!this.f16984e || (interfaceC1052d = swipeDismissBehavior.f12448e) == null) {
                return;
            }
            ((n) interfaceC1052d).onDismiss(view);
        }
    }
}
