package com.bumptech.glide.manager;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Handler;
import android.os.Message;
import androidx.fragment.app.H;
import androidx.lifecycle.AbstractC0557o;
import java.util.HashMap;
import u2.C1673D;

/* loaded from: classes.dex */
public final class q implements Handler.Callback {

    /* renamed from: m, reason: collision with root package name */
    public static final o f9368m = new o();

    /* renamed from: b, reason: collision with root package name */
    public volatile com.bumptech.glide.q f9369b;

    /* renamed from: e, reason: collision with root package name */
    public final p f9370e;

    /* renamed from: f, reason: collision with root package name */
    public final j f9371f;

    /* renamed from: j, reason: collision with root package name */
    public final C.k f9372j;

    public q(p pVar) {
        new p.g();
        pVar = pVar == null ? f9368m : pVar;
        this.f9370e = pVar;
        C.k kVar = new C.k();
        kVar.f325a = new HashMap();
        kVar.f326b = pVar;
        this.f9372j = kVar;
        this.f9371f = (C1673D.f20247f && C1673D.f20246e) ? new i() : new C0744f();
    }

    public static Activity a(Context context) {
        if (context instanceof Activity) {
            return (Activity) context;
        }
        if (context instanceof ContextWrapper) {
            return a(((ContextWrapper) context).getBaseContext());
        }
        return null;
    }

    public com.bumptech.glide.q get(Context context) {
        if (context == null) {
            throw new IllegalArgumentException("You cannot start a load on a null Context");
        }
        if (G2.t.isOnMainThread() && !(context instanceof Application)) {
            if (context instanceof H) {
                return get((H) context);
            }
            if (context instanceof ContextWrapper) {
                ContextWrapper contextWrapper = (ContextWrapper) context;
                if (contextWrapper.getBaseContext().getApplicationContext() != null) {
                    return get(contextWrapper.getBaseContext());
                }
            }
        }
        if (this.f9369b == null) {
            synchronized (this) {
                try {
                    if (this.f9369b == null) {
                        com.bumptech.glide.c cVar = com.bumptech.glide.c.get(context.getApplicationContext());
                        this.f9369b = ((o) this.f9370e).build(cVar, new C0739a(), new J3.b(), context.getApplicationContext());
                    }
                } finally {
                }
            }
        }
        return this.f9369b;
    }

    @Override // android.os.Handler.Callback
    @Deprecated
    public boolean handleMessage(Message message) {
        return false;
    }

    public com.bumptech.glide.q get(H h7) {
        if (G2.t.isOnBackgroundThread()) {
            return get(h7.getApplicationContext());
        }
        if (!h7.isDestroyed()) {
            this.f9371f.registerSelf(h7);
            Activity a7 = a(h7);
            boolean z6 = a7 == null || !a7.isFinishing();
            com.bumptech.glide.c cVar = com.bumptech.glide.c.get(h7.getApplicationContext());
            AbstractC0557o lifecycle = h7.getLifecycle();
            h7.getSupportFragmentManager();
            C.k kVar = this.f9372j;
            kVar.getClass();
            G2.t.assertMainThread();
            G2.t.assertMainThread();
            HashMap hashMap = (HashMap) kVar.f325a;
            com.bumptech.glide.q qVar = (com.bumptech.glide.q) hashMap.get(lifecycle);
            if (qVar != null) {
                return qVar;
            }
            LifecycleLifecycle lifecycleLifecycle = new LifecycleLifecycle(lifecycle);
            com.bumptech.glide.q build = ((o) ((p) kVar.f326b)).build(cVar, lifecycleLifecycle, new J3.b(), h7);
            hashMap.put(lifecycle, build);
            lifecycleLifecycle.addListener(new m(kVar, lifecycle));
            if (z6) {
                build.onStart();
            }
            return build;
        }
        throw new IllegalArgumentException("You cannot start a load for a destroyed activity");
    }
}
