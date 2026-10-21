package com.bumptech.glide;

import G2.t;
import android.content.ComponentCallbacks2;
import android.content.Context;
import android.content.res.Configuration;
import android.util.Log;
import com.bumptech.glide.manager.C0743e;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import o2.C1431e;
import o2.C1438l;
import o2.C1441o;
import o2.InterfaceC1428b;
import o2.InterfaceC1430d;

/* loaded from: classes.dex */
public final class c implements ComponentCallbacks2 {

    /* renamed from: q, reason: collision with root package name */
    public static volatile c f9126q;

    /* renamed from: r, reason: collision with root package name */
    public static volatile boolean f9127r;

    /* renamed from: b, reason: collision with root package name */
    public final InterfaceC1430d f9128b;

    /* renamed from: e, reason: collision with root package name */
    public final p2.k f9129e;

    /* renamed from: f, reason: collision with root package name */
    public final h f9130f;

    /* renamed from: j, reason: collision with root package name */
    public final C1438l f9131j;

    /* renamed from: m, reason: collision with root package name */
    public final com.bumptech.glide.manager.q f9132m;

    /* renamed from: n, reason: collision with root package name */
    public final C0743e f9133n;

    /* renamed from: p, reason: collision with root package name */
    public final ArrayList f9134p = new ArrayList();

    public c(Context context, com.bumptech.glide.load.engine.b bVar, p2.k kVar, InterfaceC1430d interfaceC1430d, C1438l c1438l, com.bumptech.glide.manager.q qVar, C0743e c0743e, int i2, d dVar, p.g gVar, List list, List list2, A2.a aVar, i iVar) {
        this.f9128b = interfaceC1430d;
        this.f9131j = c1438l;
        this.f9129e = kVar;
        this.f9132m = qVar;
        this.f9133n = c0743e;
        this.f9130f = new h(context, c1438l, new k(this, list2, aVar), new D2.i(), dVar, gVar, list, bVar, iVar, i2);
    }

    public static void a(Context context, GeneratedAppGlideModule generatedAppGlideModule) {
        g gVar = new g();
        Context applicationContext = context.getApplicationContext();
        List<Object> list = Collections.EMPTY_LIST;
        List<Object> parse = (generatedAppGlideModule == null || generatedAppGlideModule.isManifestParsingEnabled()) ? new A2.c(applicationContext).parse() : list;
        if (generatedAppGlideModule != null && !new HashSet().isEmpty()) {
            new HashSet();
            Iterator<Object> it = parse.iterator();
            if (it.hasNext()) {
                throw b.c.g(it);
            }
        }
        if (Log.isLoggable("Glide", 3)) {
            Iterator<Object> it2 = parse.iterator();
            if (it2.hasNext()) {
                throw b.c.g(it2);
            }
        }
        Iterator<Object> it3 = parse.iterator();
        if (it3.hasNext()) {
            throw b.c.g(it3);
        }
        if (generatedAppGlideModule != null) {
            generatedAppGlideModule.applyOptions(applicationContext, gVar);
        }
        if (gVar.f9142g == null) {
            gVar.f9142g = q2.h.newSourceExecutor();
        }
        if (gVar.f9143h == null) {
            gVar.f9143h = q2.h.newDiskCacheExecutor();
        }
        if (gVar.f9149n == null) {
            gVar.f9149n = q2.h.newAnimationExecutor();
        }
        if (gVar.f9145j == null) {
            gVar.f9145j = new p2.n(applicationContext).build();
        }
        if (gVar.f9146k == null) {
            gVar.f9146k = new C0743e();
        }
        if (gVar.f9139d == null) {
            int bitmapPoolSize = gVar.f9145j.getBitmapPoolSize();
            if (bitmapPoolSize > 0) {
                gVar.f9139d = new C1441o(bitmapPoolSize);
            } else {
                gVar.f9139d = new C1431e();
            }
        }
        if (gVar.f9140e == null) {
            gVar.f9140e = new C1438l(gVar.f9145j.getArrayPoolSizeInBytes());
        }
        if (gVar.f9141f == null) {
            gVar.f9141f = new p2.k(gVar.f9145j.getMemoryCacheSize());
        }
        if (gVar.f9144i == null) {
            gVar.f9144i = new p2.j(applicationContext);
        }
        if (gVar.f9138c == null) {
            gVar.f9138c = new com.bumptech.glide.load.engine.b(gVar.f9141f, gVar.f9144i, gVar.f9143h, gVar.f9142g, q2.h.newUnlimitedSourceExecutor(), gVar.f9149n, false);
        }
        List list2 = gVar.f9150o;
        if (list2 == null) {
            gVar.f9150o = list;
        } else {
            gVar.f9150o = Collections.unmodifiableList(list2);
        }
        L0.f fVar = gVar.f9137b;
        fVar.getClass();
        c cVar = new c(applicationContext, gVar.f9138c, gVar.f9141f, gVar.f9139d, gVar.f9140e, new com.bumptech.glide.manager.q(null), gVar.f9146k, gVar.f9147l, gVar.f9148m, gVar.f9136a, gVar.f9150o, parse, generatedAppGlideModule, new i(fVar));
        applicationContext.registerComponentCallbacks(cVar);
        f9126q = cVar;
    }

    public static c get(Context context) {
        GeneratedAppGlideModule generatedAppGlideModule;
        if (f9126q == null) {
            try {
                generatedAppGlideModule = (GeneratedAppGlideModule) Class.forName("com.bumptech.glide.GeneratedAppGlideModuleImpl").getDeclaredConstructor(Context.class).newInstance(context.getApplicationContext().getApplicationContext());
            } catch (ClassNotFoundException unused) {
                if (Log.isLoggable("Glide", 5)) {
                    Log.w("Glide", "Failed to find GeneratedAppGlideModule. You should include an annotationProcessor compile dependency on com.github.bumptech.glide:compiler in your application and a @GlideModule annotated AppGlideModule implementation or LibraryGlideModules will be silently ignored");
                }
                generatedAppGlideModule = null;
            } catch (IllegalAccessException e3) {
                throw new IllegalStateException("GeneratedAppGlideModuleImpl is implemented incorrectly. If you've manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation.", e3);
            } catch (InstantiationException e7) {
                throw new IllegalStateException("GeneratedAppGlideModuleImpl is implemented incorrectly. If you've manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation.", e7);
            } catch (NoSuchMethodException e8) {
                throw new IllegalStateException("GeneratedAppGlideModuleImpl is implemented incorrectly. If you've manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation.", e8);
            } catch (InvocationTargetException e9) {
                throw new IllegalStateException("GeneratedAppGlideModuleImpl is implemented incorrectly. If you've manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation.", e9);
            }
            synchronized (c.class) {
                if (f9126q == null) {
                    if (f9127r) {
                        throw new IllegalStateException("Glide has been called recursively, this is probably an internal library error!");
                    }
                    f9127r = true;
                    try {
                        a(context, generatedAppGlideModule);
                        f9127r = false;
                    } catch (Throwable th) {
                        f9127r = false;
                        throw th;
                    }
                }
            }
        }
        return f9126q;
    }

    public static q with(Context context) {
        G2.r.checkNotNull(context, "You cannot start a load on a not yet attached View or a Fragment where getActivity() returns null (which usually occurs when getActivity() is called before the Fragment is attached or after the Fragment is destroyed).");
        return get(context).getRequestManagerRetriever().get(context);
    }

    public final void b(q qVar) {
        synchronized (this.f9134p) {
            try {
                if (!this.f9134p.contains(qVar)) {
                    throw new IllegalStateException("Cannot unregister not yet registered manager");
                }
                this.f9134p.remove(qVar);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void clearMemory() {
        t.assertMainThread();
        this.f9129e.clearMemory();
        this.f9128b.clearMemory();
        this.f9131j.clearMemory();
    }

    public InterfaceC1428b getArrayPool() {
        return this.f9131j;
    }

    public InterfaceC1430d getBitmapPool() {
        return this.f9128b;
    }

    public Context getContext() {
        return this.f9130f.getBaseContext();
    }

    public j getRegistry() {
        return this.f9130f.getRegistry();
    }

    public com.bumptech.glide.manager.q getRequestManagerRetriever() {
        return this.f9132m;
    }

    @Override // android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
    }

    @Override // android.content.ComponentCallbacks
    public void onLowMemory() {
        clearMemory();
    }

    @Override // android.content.ComponentCallbacks2
    public void onTrimMemory(int i2) {
        trimMemory(i2);
    }

    public void trimMemory(int i2) {
        t.assertMainThread();
        synchronized (this.f9134p) {
            try {
                Iterator it = this.f9134p.iterator();
                while (it.hasNext()) {
                    ((q) it.next()).onTrimMemory(i2);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        this.f9129e.trimMemory(i2);
        this.f9128b.trimMemory(i2);
        this.f9131j.trimMemory(i2);
    }
}
