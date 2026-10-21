package f1;

import java.util.ArrayList;

/* renamed from: f1.y, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class RunnableC0918y implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ C0887c f14345b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ C0915v f14346e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ ArrayList f14347f;

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ AbstractC0881C f14348j;

    public RunnableC0918y(AbstractC0881C abstractC0881C, C0887c c0887c, C0915v c0915v, ArrayList arrayList) {
        this.f14348j = abstractC0881C;
        this.f14345b = c0887c;
        this.f14346e = c0915v;
        this.f14347f = arrayList;
    }

    @Override // java.lang.Runnable
    public void run() {
        ArrayList arrayList = this.f14347f;
        this.f14345b.onRoutesChanged(this.f14348j, this.f14346e, arrayList);
    }
}
