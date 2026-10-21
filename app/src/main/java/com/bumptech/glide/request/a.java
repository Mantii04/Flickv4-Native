package com.bumptech.glide.request;

import C2.c;
import C2.d;
import C2.g;
import D2.j;
import E2.e;
import G2.m;
import G2.t;
import H2.i;
import H2.k;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.Log;
import com.bumptech.glide.Priority;
import com.bumptech.glide.f;
import com.bumptech.glide.h;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.engine.GlideException;
import com.bumptech.glide.load.engine.b;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
import l2.q;
import n2.C1379A;
import n2.InterfaceC1391M;
import n2.u;

/* loaded from: classes.dex */
public final class a implements c, j, g {

    /* renamed from: D, reason: collision with root package name */
    public static final boolean f9416D = Log.isLoggable("GlideRequest", 2);

    /* renamed from: A, reason: collision with root package name */
    public int f9417A;

    /* renamed from: B, reason: collision with root package name */
    public boolean f9418B;

    /* renamed from: C, reason: collision with root package name */
    public final RuntimeException f9419C;

    /* renamed from: a, reason: collision with root package name */
    public int f9420a;

    /* renamed from: b, reason: collision with root package name */
    public final String f9421b;

    /* renamed from: c, reason: collision with root package name */
    public final k f9422c;

    /* renamed from: d, reason: collision with root package name */
    public final Object f9423d;

    /* renamed from: e, reason: collision with root package name */
    public final d f9424e;

    /* renamed from: f, reason: collision with root package name */
    public final Context f9425f;

    /* renamed from: g, reason: collision with root package name */
    public final h f9426g;

    /* renamed from: h, reason: collision with root package name */
    public final Object f9427h;

    /* renamed from: i, reason: collision with root package name */
    public final Class f9428i;

    /* renamed from: j, reason: collision with root package name */
    public final C2.a f9429j;

    /* renamed from: k, reason: collision with root package name */
    public final int f9430k;

    /* renamed from: l, reason: collision with root package name */
    public final int f9431l;

    /* renamed from: m, reason: collision with root package name */
    public final Priority f9432m;

    /* renamed from: n, reason: collision with root package name */
    public final D2.k f9433n;

    /* renamed from: o, reason: collision with root package name */
    public final List f9434o;

    /* renamed from: p, reason: collision with root package name */
    public final e f9435p;

    /* renamed from: q, reason: collision with root package name */
    public final Executor f9436q;

    /* renamed from: r, reason: collision with root package name */
    public InterfaceC1391M f9437r;

    /* renamed from: s, reason: collision with root package name */
    public C1379A f9438s;

    /* renamed from: t, reason: collision with root package name */
    public long f9439t;

    /* renamed from: u, reason: collision with root package name */
    public volatile b f9440u;

    /* renamed from: v, reason: collision with root package name */
    public SingleRequest$Status f9441v;

    /* renamed from: w, reason: collision with root package name */
    public Drawable f9442w;

    /* renamed from: x, reason: collision with root package name */
    public Drawable f9443x;

    /* renamed from: y, reason: collision with root package name */
    public Drawable f9444y;

    /* renamed from: z, reason: collision with root package name */
    public int f9445z;

    public a(Context context, h hVar, Object obj, Object obj2, Class cls, C2.a aVar, int i2, int i7, Priority priority, D2.k kVar, List list, d dVar, b bVar, e eVar, Executor executor) {
        this.f9421b = f9416D ? String.valueOf(hashCode()) : null;
        this.f9422c = k.newInstance();
        this.f9423d = obj;
        this.f9425f = context;
        this.f9426g = hVar;
        this.f9427h = obj2;
        this.f9428i = cls;
        this.f9429j = aVar;
        this.f9430k = i2;
        this.f9431l = i7;
        this.f9432m = priority;
        this.f9433n = kVar;
        this.f9434o = list;
        this.f9424e = dVar;
        this.f9440u = bVar;
        this.f9435p = eVar;
        this.f9436q = executor;
        this.f9441v = SingleRequest$Status.f9409b;
        if (this.f9419C == null && hVar.getExperiments().isEnabled(f.class)) {
            this.f9419C = new RuntimeException("Glide request origin trace");
        }
    }

    public static <R> a obtain(Context context, h hVar, Object obj, Object obj2, Class<R> cls, C2.a aVar, int i2, int i7, Priority priority, D2.k kVar, C2.e eVar, List<C2.e> list, d dVar, b bVar, e eVar2, Executor executor) {
        return new a(context, hVar, obj, obj2, cls, aVar, i2, i7, priority, kVar, list, dVar, bVar, eVar2, executor);
    }

    public final Drawable a() {
        if (this.f9444y == null) {
            C2.a aVar = this.f9429j;
            Drawable fallbackDrawable = aVar.getFallbackDrawable();
            this.f9444y = fallbackDrawable;
            if (fallbackDrawable == null && aVar.getFallbackId() > 0) {
                this.f9444y = c(aVar.getFallbackId());
            }
        }
        return this.f9444y;
    }

    public final Drawable b() {
        if (this.f9443x == null) {
            C2.a aVar = this.f9429j;
            Drawable placeholderDrawable = aVar.getPlaceholderDrawable();
            this.f9443x = placeholderDrawable;
            if (placeholderDrawable == null && aVar.getPlaceholderId() > 0) {
                this.f9443x = c(aVar.getPlaceholderId());
            }
        }
        return this.f9443x;
    }

    @Override // C2.c
    public void begin() {
        synchronized (this.f9423d) {
            try {
                if (this.f9418B) {
                    throw new IllegalStateException("You can't start or clear loads in RequestListener or Target callbacks. If you're trying to start a fallback request when a load fails, use RequestBuilder#error(RequestBuilder). Otherwise consider posting your into() or clear() calls to the main thread using a Handler instead.");
                }
                this.f9422c.throwIfRecycled();
                this.f9439t = m.getLogTime();
                if (this.f9427h == null) {
                    if (t.isValidDimensions(this.f9430k, this.f9431l)) {
                        this.f9445z = this.f9430k;
                        this.f9417A = this.f9431l;
                    }
                    e(new GlideException("Received null model"), a() == null ? 5 : 3);
                    return;
                }
                SingleRequest$Status singleRequest$Status = this.f9441v;
                if (singleRequest$Status == SingleRequest$Status.f9410e) {
                    throw new IllegalArgumentException("Cannot restart a running request");
                }
                if (singleRequest$Status == SingleRequest$Status.f9412j) {
                    onResourceReady(this.f9437r, DataSource.f9183m, false);
                    return;
                }
                List list = this.f9434o;
                if (list != null) {
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        if (it.next() != null) {
                            throw new ClassCastException();
                        }
                    }
                }
                this.f9420a = i.beginSectionAsync("GlideRequest");
                SingleRequest$Status singleRequest$Status2 = SingleRequest$Status.f9411f;
                this.f9441v = singleRequest$Status2;
                if (t.isValidDimensions(this.f9430k, this.f9431l)) {
                    onSizeReady(this.f9430k, this.f9431l);
                } else {
                    this.f9433n.getSize(this);
                }
                SingleRequest$Status singleRequest$Status3 = this.f9441v;
                if (singleRequest$Status3 == SingleRequest$Status.f9410e || singleRequest$Status3 == singleRequest$Status2) {
                    d dVar = this.f9424e;
                    if (dVar == null || dVar.canNotifyStatusChanged(this)) {
                        this.f9433n.onLoadStarted(b());
                    }
                }
                if (f9416D) {
                    d("finished run method in " + m.getElapsedMillis(this.f9439t));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final Drawable c(int i2) {
        C2.a aVar = this.f9429j;
        Resources.Theme theme = aVar.getTheme();
        Context context = this.f9425f;
        return w2.e.getDrawable(context, i2, theme != null ? aVar.getTheme() : context.getTheme());
    }

    @Override // C2.c
    public void clear() {
        synchronized (this.f9423d) {
            try {
                if (this.f9418B) {
                    throw new IllegalStateException("You can't start or clear loads in RequestListener or Target callbacks. If you're trying to start a fallback request when a load fails, use RequestBuilder#error(RequestBuilder). Otherwise consider posting your into() or clear() calls to the main thread using a Handler instead.");
                }
                this.f9422c.throwIfRecycled();
                SingleRequest$Status singleRequest$Status = this.f9441v;
                SingleRequest$Status singleRequest$Status2 = SingleRequest$Status.f9414n;
                if (singleRequest$Status == singleRequest$Status2) {
                    return;
                }
                if (this.f9418B) {
                    throw new IllegalStateException("You can't start or clear loads in RequestListener or Target callbacks. If you're trying to start a fallback request when a load fails, use RequestBuilder#error(RequestBuilder). Otherwise consider posting your into() or clear() calls to the main thread using a Handler instead.");
                }
                this.f9422c.throwIfRecycled();
                this.f9433n.removeCallback(this);
                C1379A c1379a = this.f9438s;
                InterfaceC1391M interfaceC1391M = null;
                if (c1379a != null) {
                    c1379a.cancel();
                    this.f9438s = null;
                }
                InterfaceC1391M interfaceC1391M2 = this.f9437r;
                if (interfaceC1391M2 != null) {
                    this.f9437r = null;
                    interfaceC1391M = interfaceC1391M2;
                }
                d dVar = this.f9424e;
                if (dVar == null || dVar.canNotifyCleared(this)) {
                    this.f9433n.onLoadCleared(b());
                }
                i.endSectionAsync("GlideRequest", this.f9420a);
                this.f9441v = singleRequest$Status2;
                if (interfaceC1391M != null) {
                    this.f9440u.release(interfaceC1391M);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void d(String str) {
        StringBuilder s6 = A.i.s(str, " this: ");
        s6.append(this.f9421b);
        Log.v("GlideRequest", s6.toString());
    }

    public final void e(GlideException glideException, int i2) {
        this.f9422c.throwIfRecycled();
        synchronized (this.f9423d) {
            try {
                glideException.setOrigin(this.f9419C);
                int logLevel = this.f9426g.getLogLevel();
                if (logLevel <= i2) {
                    Log.w("Glide", "Load failed for [" + this.f9427h + "] with dimensions [" + this.f9445z + "x" + this.f9417A + "]", glideException);
                    if (logLevel <= 4) {
                        glideException.logRootCauses("Glide");
                    }
                }
                this.f9438s = null;
                this.f9441v = SingleRequest$Status.f9413m;
                d dVar = this.f9424e;
                if (dVar != null) {
                    dVar.onRequestFailed(this);
                }
                this.f9418B = true;
                try {
                    List list = this.f9434o;
                    if (list != null) {
                        Iterator it = list.iterator();
                        if (it.hasNext()) {
                            if (it.next() != null) {
                                throw new ClassCastException();
                            }
                            d dVar2 = this.f9424e;
                            if (dVar2 == null) {
                                throw null;
                            }
                            dVar2.getRoot().isAnyResourceSet();
                            throw null;
                        }
                    }
                    g();
                    this.f9418B = false;
                    i.endSectionAsync("GlideRequest", this.f9420a);
                } catch (Throwable th) {
                    this.f9418B = false;
                    throw th;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void f(InterfaceC1391M interfaceC1391M, Object obj, DataSource dataSource) {
        d dVar = this.f9424e;
        boolean z6 = dVar == null || !dVar.getRoot().isAnyResourceSet();
        this.f9441v = SingleRequest$Status.f9412j;
        this.f9437r = interfaceC1391M;
        if (this.f9426g.getLogLevel() <= 3) {
            Log.d("Glide", "Finished loading " + obj.getClass().getSimpleName() + " from " + dataSource + " for " + this.f9427h + " with size [" + this.f9445z + "x" + this.f9417A + "] in " + m.getElapsedMillis(this.f9439t) + " ms");
        }
        if (dVar != null) {
            dVar.onRequestSuccess(this);
        }
        this.f9418B = true;
        try {
            List list = this.f9434o;
            if (list != null) {
                Iterator it = list.iterator();
                if (it.hasNext()) {
                    if (it.next() != null) {
                        throw new ClassCastException();
                    }
                    throw null;
                }
            }
            this.f9433n.onResourceReady(obj, ((E2.a) this.f9435p).build(dataSource, z6));
            this.f9418B = false;
            i.endSectionAsync("GlideRequest", this.f9420a);
        } catch (Throwable th) {
            this.f9418B = false;
            throw th;
        }
    }

    public final void g() {
        d dVar = this.f9424e;
        if (dVar == null || dVar.canNotifyStatusChanged(this)) {
            Drawable a7 = this.f9427h == null ? a() : null;
            if (a7 == null) {
                if (this.f9442w == null) {
                    C2.a aVar = this.f9429j;
                    Drawable errorPlaceholder = aVar.getErrorPlaceholder();
                    this.f9442w = errorPlaceholder;
                    if (errorPlaceholder == null && aVar.getErrorId() > 0) {
                        this.f9442w = c(aVar.getErrorId());
                    }
                }
                a7 = this.f9442w;
            }
            if (a7 == null) {
                a7 = b();
            }
            this.f9433n.onLoadFailed(a7);
        }
    }

    public Object getLock() {
        this.f9422c.throwIfRecycled();
        return this.f9423d;
    }

    @Override // C2.c
    public boolean isAnyResourceSet() {
        boolean z6;
        synchronized (this.f9423d) {
            z6 = this.f9441v == SingleRequest$Status.f9412j;
        }
        return z6;
    }

    @Override // C2.c
    public boolean isCleared() {
        boolean z6;
        synchronized (this.f9423d) {
            z6 = this.f9441v == SingleRequest$Status.f9414n;
        }
        return z6;
    }

    @Override // C2.c
    public boolean isComplete() {
        boolean z6;
        synchronized (this.f9423d) {
            z6 = this.f9441v == SingleRequest$Status.f9412j;
        }
        return z6;
    }

    @Override // C2.c
    public boolean isEquivalentTo(c cVar) {
        int i2;
        int i7;
        Object obj;
        Class cls;
        C2.a aVar;
        Priority priority;
        int size;
        int i8;
        int i9;
        Object obj2;
        Class cls2;
        C2.a aVar2;
        Priority priority2;
        int size2;
        if (!(cVar instanceof a)) {
            return false;
        }
        synchronized (this.f9423d) {
            try {
                i2 = this.f9430k;
                i7 = this.f9431l;
                obj = this.f9427h;
                cls = this.f9428i;
                aVar = this.f9429j;
                priority = this.f9432m;
                List list = this.f9434o;
                size = list != null ? list.size() : 0;
            } finally {
            }
        }
        a aVar3 = (a) cVar;
        synchronized (aVar3.f9423d) {
            try {
                i8 = aVar3.f9430k;
                i9 = aVar3.f9431l;
                obj2 = aVar3.f9427h;
                cls2 = aVar3.f9428i;
                aVar2 = aVar3.f9429j;
                priority2 = aVar3.f9432m;
                List list2 = aVar3.f9434o;
                size2 = list2 != null ? list2.size() : 0;
            } finally {
            }
        }
        return i2 == i8 && i7 == i9 && t.bothModelsNullEquivalentOrEquals(obj, obj2) && cls.equals(cls2) && t.bothBaseRequestOptionsNullEquivalentOrEquals(aVar, aVar2) && priority == priority2 && size == size2;
    }

    @Override // C2.c
    public boolean isRunning() {
        boolean z6;
        synchronized (this.f9423d) {
            try {
                SingleRequest$Status singleRequest$Status = this.f9441v;
                z6 = singleRequest$Status == SingleRequest$Status.f9410e || singleRequest$Status == SingleRequest$Status.f9411f;
            } finally {
            }
        }
        return z6;
    }

    public void onLoadFailed(GlideException glideException) {
        e(glideException, 5);
    }

    public void onResourceReady(InterfaceC1391M interfaceC1391M, DataSource dataSource, boolean z6) {
        this.f9422c.throwIfRecycled();
        InterfaceC1391M interfaceC1391M2 = null;
        try {
            synchronized (this.f9423d) {
                try {
                    this.f9438s = null;
                    if (interfaceC1391M == null) {
                        onLoadFailed(new GlideException("Expected to receive a Resource<R> with an object of " + this.f9428i + " inside, but instead got null."));
                        return;
                    }
                    Object obj = interfaceC1391M.get();
                    try {
                        if (obj != null && this.f9428i.isAssignableFrom(obj.getClass())) {
                            d dVar = this.f9424e;
                            if (dVar == null || dVar.canSetImage(this)) {
                                f(interfaceC1391M, obj, dataSource);
                                return;
                            }
                            this.f9437r = null;
                            this.f9441v = SingleRequest$Status.f9412j;
                            i.endSectionAsync("GlideRequest", this.f9420a);
                            this.f9440u.release(interfaceC1391M);
                        }
                        this.f9437r = null;
                        StringBuilder sb = new StringBuilder("Expected to receive an object of ");
                        sb.append(this.f9428i);
                        sb.append(" but instead got ");
                        sb.append(obj != null ? obj.getClass() : "");
                        sb.append("{");
                        sb.append(obj);
                        sb.append("} inside Resource{");
                        sb.append(interfaceC1391M);
                        sb.append("}.");
                        sb.append(obj != null ? "" : " To indicate failure return a null Resource object, rather than a Resource object containing null data.");
                        onLoadFailed(new GlideException(sb.toString()));
                        this.f9440u.release(interfaceC1391M);
                    } catch (Throwable th) {
                        interfaceC1391M2 = interfaceC1391M;
                        th = th;
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            }
        } catch (Throwable th3) {
            if (interfaceC1391M2 != null) {
                this.f9440u.release(interfaceC1391M2);
            }
            throw th3;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onSizeReady(int i2, int i7) {
        a aVar = this;
        int i8 = i2;
        aVar.f9422c.throwIfRecycled();
        Object obj = aVar.f9423d;
        synchronized (obj) {
            try {
                try {
                    boolean z6 = f9416D;
                    if (z6) {
                        aVar.d("Got onSizeReady in " + m.getElapsedMillis(aVar.f9439t));
                    }
                    if (aVar.f9441v == SingleRequest$Status.f9411f) {
                        SingleRequest$Status singleRequest$Status = SingleRequest$Status.f9410e;
                        aVar.f9441v = singleRequest$Status;
                        float sizeMultiplier = aVar.f9429j.getSizeMultiplier();
                        if (i8 != Integer.MIN_VALUE) {
                            i8 = Math.round(i8 * sizeMultiplier);
                        }
                        aVar.f9445z = i8;
                        aVar.f9417A = i7 == Integer.MIN_VALUE ? i7 : Math.round(sizeMultiplier * i7);
                        if (z6) {
                            aVar.d("finished setup for calling load in " + m.getElapsedMillis(aVar.f9439t));
                        }
                        b bVar = aVar.f9440u;
                        h hVar = aVar.f9426g;
                        Object obj2 = aVar.f9427h;
                        l2.m signature = aVar.f9429j.getSignature();
                        try {
                            int i9 = aVar.f9445z;
                            int i10 = aVar.f9417A;
                            Class<?> resourceClass = aVar.f9429j.getResourceClass();
                            Class cls = aVar.f9428i;
                            try {
                                Priority priority = aVar.f9432m;
                                u diskCacheStrategy = aVar.f9429j.getDiskCacheStrategy();
                                Map<Class<?>, l2.t> transformations = aVar.f9429j.getTransformations();
                                boolean isTransformationRequired = aVar.f9429j.isTransformationRequired();
                                C2.a aVar2 = aVar.f9429j;
                                try {
                                    boolean z7 = aVar2.f473A;
                                    q options = aVar2.getOptions();
                                    boolean isMemoryCacheable = aVar.f9429j.isMemoryCacheable();
                                    boolean useUnlimitedSourceGeneratorsPool = aVar.f9429j.getUseUnlimitedSourceGeneratorsPool();
                                    boolean useAnimationPool = aVar.f9429j.getUseAnimationPool();
                                    boolean onlyRetrieveFromCache = aVar.f9429j.getOnlyRetrieveFromCache();
                                    Executor executor = aVar.f9436q;
                                    aVar = obj;
                                    try {
                                        aVar.f9438s = bVar.load(hVar, obj2, signature, i9, i10, resourceClass, cls, priority, diskCacheStrategy, transformations, isTransformationRequired, z7, options, isMemoryCacheable, useUnlimitedSourceGeneratorsPool, useAnimationPool, onlyRetrieveFromCache, aVar, executor);
                                        if (aVar.f9441v != singleRequest$Status) {
                                            aVar.f9438s = null;
                                        }
                                        if (z6) {
                                            aVar.d("finished onSizeReady in " + m.getElapsedMillis(aVar.f9439t));
                                        }
                                    } catch (Throwable th) {
                                        th = th;
                                        throw th;
                                    }
                                } catch (Throwable th2) {
                                    th = th2;
                                    aVar = obj;
                                }
                            } catch (Throwable th3) {
                                th = th3;
                                aVar = obj;
                            }
                        } catch (Throwable th4) {
                            th = th4;
                            aVar = obj;
                        }
                    }
                } catch (Throwable th5) {
                    th = th5;
                }
            } catch (Throwable th6) {
                th = th6;
                aVar = obj;
            }
        }
    }

    @Override // C2.c
    public void pause() {
        synchronized (this.f9423d) {
            try {
                if (isRunning()) {
                    clear();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public String toString() {
        Object obj;
        Class cls;
        synchronized (this.f9423d) {
            obj = this.f9427h;
            cls = this.f9428i;
        }
        return super.toString() + "[model=" + obj + ", transcodeClass=" + cls + "]";
    }
}
