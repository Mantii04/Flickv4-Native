package com.bumptech.glide;

import G2.t;
import android.content.ComponentCallbacks2;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.view.View;
import com.bumptech.glide.manager.C0743e;
import com.bumptech.glide.manager.G;
import com.bumptech.glide.manager.InterfaceC0741c;
import com.bumptech.glide.manager.s;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import y2.C1882d;

/* loaded from: classes.dex */
public final class q implements ComponentCallbacks2, com.bumptech.glide.manager.l {

    /* renamed from: t, reason: collision with root package name */
    public static final C2.f f9389t = (C2.f) C2.f.decodeTypeOf(Bitmap.class).lock();

    /* renamed from: u, reason: collision with root package name */
    public static final C2.f f9390u = (C2.f) C2.f.decodeTypeOf(C1882d.class).lock();

    /* renamed from: b, reason: collision with root package name */
    public final c f9391b;

    /* renamed from: e, reason: collision with root package name */
    public final Context f9392e;

    /* renamed from: f, reason: collision with root package name */
    public final com.bumptech.glide.manager.k f9393f;

    /* renamed from: j, reason: collision with root package name */
    public final s f9394j;

    /* renamed from: m, reason: collision with root package name */
    public final com.bumptech.glide.manager.r f9395m;

    /* renamed from: n, reason: collision with root package name */
    public final G f9396n;

    /* renamed from: p, reason: collision with root package name */
    public final n f9397p;

    /* renamed from: q, reason: collision with root package name */
    public final InterfaceC0741c f9398q;

    /* renamed from: r, reason: collision with root package name */
    public final CopyOnWriteArrayList f9399r;

    /* renamed from: s, reason: collision with root package name */
    public C2.f f9400s;

    static {
    }

    public q(c cVar, com.bumptech.glide.manager.k kVar, com.bumptech.glide.manager.r rVar, Context context) {
        s sVar = new s();
        C0743e c0743e = cVar.f9133n;
        this.f9396n = new G();
        n nVar = new n(this);
        this.f9397p = nVar;
        this.f9391b = cVar;
        this.f9393f = kVar;
        this.f9395m = rVar;
        this.f9394j = sVar;
        this.f9392e = context;
        InterfaceC0741c build = c0743e.build(context.getApplicationContext(), new p(this, sVar));
        this.f9398q = build;
        synchronized (cVar.f9134p) {
            if (cVar.f9134p.contains(this)) {
                throw new IllegalStateException("Cannot register already registered manager");
            }
            cVar.f9134p.add(this);
        }
        if (t.isOnBackgroundThread()) {
            t.postOnUiThread(nVar);
        } else {
            kVar.addListener(this);
        }
        kVar.addListener(build);
        this.f9399r = new CopyOnWriteArrayList(cVar.f9130f.getDefaultRequestListeners());
        setRequestOptions(cVar.f9130f.getDefaultRequestOptions());
    }

    public final synchronized void a() {
        try {
            Iterator<D2.k> it = this.f9396n.getAll().iterator();
            while (it.hasNext()) {
                clear(it.next());
            }
            this.f9396n.clear();
        } catch (Throwable th) {
            throw th;
        }
    }

    public <ResourceType> m as(Class<ResourceType> cls) {
        return new m(this.f9391b, this, cls, this.f9392e);
    }

    public m asBitmap() {
        return as(Bitmap.class).apply((C2.a) f9389t);
    }

    public m asDrawable() {
        return as(Drawable.class);
    }

    public m asGif() {
        return as(C1882d.class).apply((C2.a) f9390u);
    }

    public final synchronized boolean b(D2.k kVar) {
        C2.c request = kVar.getRequest();
        if (request == null) {
            return true;
        }
        if (!this.f9394j.clearAndRemove(request)) {
            return false;
        }
        this.f9396n.untrack(kVar);
        kVar.setRequest(null);
        return true;
    }

    public void clear(View view) {
        clear(new o(view));
    }

    public m load(Integer num) {
        return asDrawable().load(num);
    }

    @Override // android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
    }

    @Override // com.bumptech.glide.manager.l
    public synchronized void onDestroy() {
        this.f9396n.onDestroy();
        a();
        this.f9394j.clearRequests();
        this.f9393f.removeListener(this);
        this.f9393f.removeListener(this.f9398q);
        t.removeCallbacksOnUiThread(this.f9397p);
        this.f9391b.b(this);
    }

    @Override // android.content.ComponentCallbacks
    public void onLowMemory() {
    }

    @Override // com.bumptech.glide.manager.l
    public synchronized void onStart() {
        resumeRequests();
        this.f9396n.onStart();
    }

    @Override // com.bumptech.glide.manager.l
    public synchronized void onStop() {
        this.f9396n.onStop();
        pauseRequests();
    }

    @Override // android.content.ComponentCallbacks2
    public void onTrimMemory(int i2) {
    }

    public synchronized void pauseRequests() {
        this.f9394j.pauseRequests();
    }

    public synchronized void resumeRequests() {
        this.f9394j.resumeRequests();
    }

    public synchronized void setRequestOptions(C2.f fVar) {
        this.f9400s = (C2.f) ((C2.f) fVar.mo0clone()).autoClone();
    }

    public synchronized String toString() {
        return super.toString() + "{tracker=" + this.f9394j + ", treeNode=" + this.f9395m + "}";
    }

    public void clear(D2.k kVar) {
        if (kVar == null) {
            return;
        }
        boolean b7 = b(kVar);
        C2.c request = kVar.getRequest();
        if (b7) {
            return;
        }
        c cVar = this.f9391b;
        synchronized (cVar.f9134p) {
            try {
                Iterator it = cVar.f9134p.iterator();
                while (it.hasNext()) {
                    if (((q) it.next()).b(kVar)) {
                        return;
                    }
                }
                if (request != null) {
                    kVar.setRequest(null);
                    request.clear();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
