package e4;

import android.view.View;
import android.view.ViewGroup;
import h4.w;

/* renamed from: e4.b, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0855b extends h4.c {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ View f13936a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f13937b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ g f13938c;

    public C0855b(g gVar, int i2, View view) {
        this.f13938c = gVar;
        this.f13936a = view;
        this.f13937b = i2;
    }

    @Override // h4.c, h4.InterfaceC0986a
    public void onAnimationEnd(h4.b bVar) {
        super.onAnimationEnd(bVar);
        g gVar = this.f13938c;
        View view = this.f13936a;
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        int height = view.getHeight();
        w duration = w.ofInt(height, 1).setDuration(gVar.f13948j);
        duration.addListener(new C0856c(gVar, height));
        duration.addUpdateListener(new d(view, layoutParams));
        gVar.f13952q.add(new f(gVar, this.f13937b, view));
        duration.start();
    }
}
