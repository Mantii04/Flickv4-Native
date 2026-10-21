package k;

import android.view.MenuItem;

/* renamed from: k.g, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class RunnableC1075g implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ C1077i f17097b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ MenuItem f17098e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ C1084p f17099f;

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ C1076h f17100j;

    public RunnableC1075g(C1076h c1076h, C1077i c1077i, MenuItem menuItem, C1084p c1084p) {
        this.f17100j = c1076h;
        this.f17097b = c1077i;
        this.f17098e = menuItem;
        this.f17099f = c1084p;
    }

    @Override // java.lang.Runnable
    public void run() {
        C1077i c1077i = this.f17097b;
        if (c1077i != null) {
            C1076h c1076h = this.f17100j;
            c1076h.f17101b.f17115J = true;
            c1077i.f17103b.close(false);
            c1076h.f17101b.f17115J = false;
        }
        MenuItem menuItem = this.f17098e;
        if (menuItem.isEnabled() && menuItem.hasSubMenu()) {
            this.f17099f.performItemAction(menuItem, 4);
        }
    }
}
