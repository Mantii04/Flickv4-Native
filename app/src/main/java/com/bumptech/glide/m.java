package com.bumptech.glide;

import G2.t;
import android.annotation.SuppressLint;
import android.content.Context;
import android.widget.ImageView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Objects;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class m extends C2.a {

    /* renamed from: C, reason: collision with root package name */
    public final Context f9327C;

    /* renamed from: D, reason: collision with root package name */
    public final q f9328D;

    /* renamed from: E, reason: collision with root package name */
    public final Class f9329E;

    /* renamed from: F, reason: collision with root package name */
    public final h f9330F;

    /* renamed from: G, reason: collision with root package name */
    public AbstractC0746r f9331G;

    /* renamed from: H, reason: collision with root package name */
    public Object f9332H;

    /* renamed from: I, reason: collision with root package name */
    public ArrayList f9333I;

    /* renamed from: J, reason: collision with root package name */
    public m f9334J;

    /* renamed from: K, reason: collision with root package name */
    public m f9335K;

    /* renamed from: L, reason: collision with root package name */
    public final boolean f9336L = true;

    /* renamed from: M, reason: collision with root package name */
    public boolean f9337M;

    /* renamed from: N, reason: collision with root package name */
    public boolean f9338N;

    static {
    }

    @SuppressLint({"CheckResult"})
    public m(c cVar, q qVar, Class<Object> cls, Context context) {
        C2.f fVar;
        this.f9328D = qVar;
        this.f9329E = cls;
        this.f9327C = context;
        this.f9331G = qVar.f9391b.f9130f.getDefaultTransitionOptions(cls);
        this.f9330F = cVar.f9130f;
        Iterator it = qVar.f9399r.iterator();
        while (it.hasNext()) {
            if (it.next() != null) {
                throw new ClassCastException();
            }
            addListener(null);
        }
        synchronized (qVar) {
            fVar = qVar.f9400s;
        }
        apply((C2.a) fVar);
    }

    public m addListener(C2.e eVar) {
        if (isAutoCloneEnabled()) {
            return mo0clone().addListener(eVar);
        }
        if (eVar != null) {
            if (this.f9333I == null) {
                this.f9333I = new ArrayList();
            }
            this.f9333I.add(eVar);
        }
        return (m) selfOrThrowIfLocked();
    }

    @Override // C2.a
    public boolean equals(Object obj) {
        if (!(obj instanceof m)) {
            return false;
        }
        m mVar = (m) obj;
        if (super.equals(mVar)) {
            return Objects.equals(this.f9329E, mVar.f9329E) && this.f9331G.equals(mVar.f9331G) && Objects.equals(this.f9332H, mVar.f9332H) && Objects.equals(this.f9333I, mVar.f9333I) && Objects.equals(this.f9334J, mVar.f9334J) && Objects.equals(this.f9335K, mVar.f9335K) && this.f9336L == mVar.f9336L && this.f9337M == mVar.f9337M;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final C2.c h(Object obj, D2.k kVar, C2.d dVar, AbstractC0746r abstractC0746r, Priority priority, int i2, int i7, C2.a aVar, Executor executor) {
        C2.d dVar2;
        C2.d dVar3;
        com.bumptech.glide.request.a obtain;
        Priority priority2;
        if (this.f9335K != null) {
            dVar3 = new C2.b(obj, dVar);
            dVar2 = dVar3;
        } else {
            dVar2 = null;
            dVar3 = dVar;
        }
        m mVar = this.f9334J;
        h hVar = this.f9330F;
        if (mVar == null) {
            obtain = com.bumptech.glide.request.a.obtain(this.f9327C, hVar, obj, this.f9332H, this.f9329E, aVar, i2, i7, priority, kVar, null, this.f9333I, dVar3, hVar.getEngine(), abstractC0746r.f9401b, executor);
        } else {
            if (this.f9338N) {
                throw new IllegalStateException("You cannot use a request as both the main request and a thumbnail, consider using clone() on the request(s) passed to thumbnail()");
            }
            AbstractC0746r abstractC0746r2 = mVar.f9336L ? abstractC0746r : mVar.f9331G;
            if (mVar.isPrioritySet()) {
                priority2 = this.f9334J.getPriority();
            } else {
                int ordinal = priority.ordinal();
                if (ordinal == 0 || ordinal == 1) {
                    priority2 = Priority.f9121b;
                } else if (ordinal == 2) {
                    priority2 = Priority.f9122e;
                } else {
                    if (ordinal != 3) {
                        throw new IllegalArgumentException("unknown priority: " + getPriority());
                    }
                    priority2 = Priority.f9123f;
                }
            }
            Priority priority3 = priority2;
            int overrideWidth = this.f9334J.getOverrideWidth();
            int overrideHeight = this.f9334J.getOverrideHeight();
            if (t.isValidDimensions(i2, i7) && !this.f9334J.isValidOverride()) {
                overrideWidth = aVar.getOverrideWidth();
                overrideHeight = aVar.getOverrideHeight();
            }
            C2.h hVar2 = new C2.h(obj, dVar3);
            com.bumptech.glide.request.a obtain2 = com.bumptech.glide.request.a.obtain(this.f9327C, hVar, obj, this.f9332H, this.f9329E, aVar, i2, i7, priority, kVar, null, this.f9333I, hVar2, hVar.getEngine(), abstractC0746r.f9401b, executor);
            this.f9338N = true;
            m mVar2 = this.f9334J;
            C2.c h7 = mVar2.h(obj, kVar, hVar2, abstractC0746r2, priority3, overrideWidth, overrideHeight, mVar2, executor);
            this.f9338N = false;
            hVar2.setRequests(obtain2, h7);
            obtain = hVar2;
        }
        if (dVar2 == null) {
            return obtain;
        }
        int overrideWidth2 = this.f9335K.getOverrideWidth();
        int overrideHeight2 = this.f9335K.getOverrideHeight();
        if (t.isValidDimensions(i2, i7) && !this.f9335K.isValidOverride()) {
            overrideWidth2 = aVar.getOverrideWidth();
            overrideHeight2 = aVar.getOverrideHeight();
        }
        m mVar3 = this.f9335K;
        C2.b bVar = dVar2;
        bVar.setRequests(obtain, mVar3.h(obj, kVar, bVar, mVar3.f9331G, mVar3.getPriority(), overrideWidth2, overrideHeight2, this.f9335K, executor));
        return bVar;
    }

    @Override // C2.a
    public int hashCode() {
        return t.hashCode(this.f9337M, t.hashCode(this.f9336L, t.hashCode((Object) null, t.hashCode(this.f9335K, t.hashCode(this.f9334J, t.hashCode(this.f9333I, t.hashCode(this.f9332H, t.hashCode(this.f9331G, t.hashCode(this.f9329E, super.hashCode())))))))));
    }

    public final void i(D2.k kVar, C2.a aVar, Executor executor) {
        G2.r.checkNotNull(kVar);
        if (!this.f9337M) {
            throw new IllegalArgumentException("You must call #load() before calling #into()");
        }
        C2.c h7 = h(new Object(), kVar, null, this.f9331G, aVar.getPriority(), aVar.getOverrideWidth(), aVar.getOverrideHeight(), aVar, executor);
        C2.c request = kVar.getRequest();
        if (h7.isEquivalentTo(request) && (aVar.isMemoryCacheable() || !request.isComplete())) {
            if (((C2.c) G2.r.checkNotNull(request)).isRunning()) {
                return;
            }
            request.begin();
        } else {
            this.f9328D.clear(kVar);
            kVar.setRequest(h7);
            q qVar = this.f9328D;
            synchronized (qVar) {
                qVar.f9396n.track(kVar);
                qVar.f9394j.runRequest(h7);
            }
        }
    }

    public <Y extends D2.k> Y into(Y y6) {
        i(y6, this, G2.i.mainThreadExecutor());
        return y6;
    }

    public final m j(Object obj) {
        if (isAutoCloneEnabled()) {
            return mo0clone().j(obj);
        }
        this.f9332H = obj;
        this.f9337M = true;
        return (m) selfOrThrowIfLocked();
    }

    public m load(Object obj) {
        return j(obj);
    }

    @Override // C2.a
    public m apply(C2.a aVar) {
        G2.r.checkNotNull(aVar);
        return (m) super.apply(aVar);
    }

    public m load(Integer num) {
        m j7 = j(num);
        Context context = this.f9327C;
        return (m) ((m) j7.theme(context.getTheme())).signature(F2.a.obtain(context));
    }

    @Override // C2.a
    /* renamed from: clone */
    public m mo0clone() {
        m mVar = (m) super.mo0clone();
        mVar.f9331G = mVar.f9331G.m66clone();
        if (mVar.f9333I != null) {
            mVar.f9333I = new ArrayList(mVar.f9333I);
        }
        m mVar2 = mVar.f9334J;
        if (mVar2 != null) {
            mVar.f9334J = mVar2.mo0clone();
        }
        m mVar3 = mVar.f9335K;
        if (mVar3 != null) {
            mVar.f9335K = mVar3.mo0clone();
        }
        return mVar;
    }

    public D2.n into(ImageView imageView) {
        C2.a aVar;
        t.assertMainThread();
        G2.r.checkNotNull(imageView);
        if (!isTransformationSet() && isTransformationAllowed() && imageView.getScaleType() != null) {
            switch (l.f9177a[imageView.getScaleType().ordinal()]) {
                case 1:
                    aVar = mo0clone().optionalCenterCrop();
                    break;
                case 2:
                    aVar = mo0clone().optionalCenterInside();
                    break;
                case 3:
                case 4:
                case 5:
                    aVar = mo0clone().optionalFitCenter();
                    break;
                case 6:
                    aVar = mo0clone().optionalCenterInside();
                    break;
            }
            D2.n buildImageViewTarget = this.f9330F.buildImageViewTarget(imageView, this.f9329E);
            i(buildImageViewTarget, aVar, G2.i.mainThreadExecutor());
            return buildImageViewTarget;
        }
        aVar = this;
        D2.n buildImageViewTarget2 = this.f9330F.buildImageViewTarget(imageView, this.f9329E);
        i(buildImageViewTarget2, aVar, G2.i.mainThreadExecutor());
        return buildImageViewTarget2;
    }
}
