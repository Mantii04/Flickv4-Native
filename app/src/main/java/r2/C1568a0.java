package r2;

import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.engine.GlideException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* renamed from: r2.a0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1568a0 implements com.bumptech.glide.load.data.e, com.bumptech.glide.load.data.d {

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f19763b;

    /* renamed from: e, reason: collision with root package name */
    public final L.e f19764e;

    /* renamed from: f, reason: collision with root package name */
    public int f19765f;

    /* renamed from: j, reason: collision with root package name */
    public Priority f19766j;

    /* renamed from: m, reason: collision with root package name */
    public com.bumptech.glide.load.data.d f19767m;

    /* renamed from: n, reason: collision with root package name */
    public List f19768n;

    /* renamed from: p, reason: collision with root package name */
    public boolean f19769p;

    public C1568a0(ArrayList arrayList, L.e eVar) {
        this.f19764e = eVar;
        G2.r.checkNotEmpty(arrayList);
        this.f19763b = arrayList;
        this.f19765f = 0;
    }

    public final void a() {
        if (this.f19769p) {
            return;
        }
        if (this.f19765f < this.f19763b.size() - 1) {
            this.f19765f++;
            loadData(this.f19766j, this.f19767m);
        } else {
            G2.r.checkNotNull(this.f19768n);
            this.f19767m.onLoadFailed(new GlideException("Fetch failed", new ArrayList(this.f19768n)));
        }
    }

    @Override // com.bumptech.glide.load.data.e
    public void cancel() {
        this.f19769p = true;
        Iterator it = this.f19763b.iterator();
        while (it.hasNext()) {
            ((com.bumptech.glide.load.data.e) it.next()).cancel();
        }
    }

    @Override // com.bumptech.glide.load.data.e
    public void cleanup() {
        List list = this.f19768n;
        if (list != null) {
            this.f19764e.release(list);
        }
        this.f19768n = null;
        Iterator it = this.f19763b.iterator();
        while (it.hasNext()) {
            ((com.bumptech.glide.load.data.e) it.next()).cleanup();
        }
    }

    @Override // com.bumptech.glide.load.data.e
    public Class<Object> getDataClass() {
        return ((com.bumptech.glide.load.data.e) this.f19763b.get(0)).getDataClass();
    }

    @Override // com.bumptech.glide.load.data.e
    public DataSource getDataSource() {
        return ((com.bumptech.glide.load.data.e) this.f19763b.get(0)).getDataSource();
    }

    @Override // com.bumptech.glide.load.data.e
    public void loadData(Priority priority, com.bumptech.glide.load.data.d dVar) {
        this.f19766j = priority;
        this.f19767m = dVar;
        this.f19768n = (List) this.f19764e.acquire();
        ((com.bumptech.glide.load.data.e) this.f19763b.get(this.f19765f)).loadData(priority, this);
        if (this.f19769p) {
            cancel();
        }
    }

    @Override // com.bumptech.glide.load.data.d
    public void onDataReady(Object obj) {
        if (obj != null) {
            this.f19767m.onDataReady(obj);
        } else {
            a();
        }
    }

    @Override // com.bumptech.glide.load.data.d
    public void onLoadFailed(Exception exc) {
        ((List) G2.r.checkNotNull(this.f19768n)).add(exc);
        a();
    }
}
