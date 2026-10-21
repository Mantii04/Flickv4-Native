package f1;

import java.util.Collection;

/* renamed from: f1.z, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class RunnableC0919z implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ C0887c f14350b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ C0915v f14351e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Collection f14352f;

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ AbstractC0881C f14353j;

    public RunnableC0919z(AbstractC0881C abstractC0881C, C0887c c0887c, C0915v c0915v, Collection collection) {
        this.f14353j = abstractC0881C;
        this.f14350b = c0887c;
        this.f14351e = c0915v;
        this.f14352f = collection;
    }

    @Override // java.lang.Runnable
    public void run() {
        Collection<C0880B> collection = this.f14352f;
        this.f14350b.onRoutesChanged(this.f14353j, this.f14351e, collection);
    }
}
