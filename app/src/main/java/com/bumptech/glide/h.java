package com.bumptech.glide;

import android.content.Context;
import android.content.ContextWrapper;
import android.widget.ImageView;
import java.util.List;
import java.util.Map;
import o2.InterfaceC1428b;

/* loaded from: classes.dex */
public final class h extends ContextWrapper {

    /* renamed from: k, reason: collision with root package name */
    public static final a f9151k = new a();

    /* renamed from: a, reason: collision with root package name */
    public final InterfaceC1428b f9152a;

    /* renamed from: b, reason: collision with root package name */
    public final G2.k f9153b;

    /* renamed from: c, reason: collision with root package name */
    public final D2.i f9154c;

    /* renamed from: d, reason: collision with root package name */
    public final b f9155d;

    /* renamed from: e, reason: collision with root package name */
    public final List f9156e;

    /* renamed from: f, reason: collision with root package name */
    public final Map f9157f;

    /* renamed from: g, reason: collision with root package name */
    public final com.bumptech.glide.load.engine.b f9158g;

    /* renamed from: h, reason: collision with root package name */
    public final i f9159h;

    /* renamed from: i, reason: collision with root package name */
    public final int f9160i;

    /* renamed from: j, reason: collision with root package name */
    public C2.f f9161j;

    public h(Context context, InterfaceC1428b interfaceC1428b, G2.k kVar, D2.i iVar, b bVar, Map<Class<?>, AbstractC0746r> map, List<C2.e> list, com.bumptech.glide.load.engine.b bVar2, i iVar2, int i2) {
        super(context.getApplicationContext());
        this.f9152a = interfaceC1428b;
        this.f9154c = iVar;
        this.f9155d = bVar;
        this.f9156e = list;
        this.f9157f = map;
        this.f9158g = bVar2;
        this.f9159h = iVar2;
        this.f9160i = i2;
        this.f9153b = G2.l.memorize(kVar);
    }

    public <X> D2.n buildImageViewTarget(ImageView imageView, Class<X> cls) {
        return this.f9154c.buildTarget(imageView, cls);
    }

    public InterfaceC1428b getArrayPool() {
        return this.f9152a;
    }

    public List<C2.e> getDefaultRequestListeners() {
        return this.f9156e;
    }

    public synchronized C2.f getDefaultRequestOptions() {
        try {
            if (this.f9161j == null) {
                this.f9161j = (C2.f) ((d) this.f9155d).build().lock();
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.f9161j;
    }

    public <T> AbstractC0746r getDefaultTransitionOptions(Class<T> cls) {
        Map map = this.f9157f;
        AbstractC0746r abstractC0746r = (AbstractC0746r) map.get(cls);
        if (abstractC0746r == null) {
            for (Map.Entry entry : map.entrySet()) {
                if (((Class) entry.getKey()).isAssignableFrom(cls)) {
                    abstractC0746r = (AbstractC0746r) entry.getValue();
                }
            }
        }
        return abstractC0746r == null ? f9151k : abstractC0746r;
    }

    public com.bumptech.glide.load.engine.b getEngine() {
        return this.f9158g;
    }

    public i getExperiments() {
        return this.f9159h;
    }

    public int getLogLevel() {
        return this.f9160i;
    }

    public j getRegistry() {
        return (j) this.f9153b.get();
    }
}
