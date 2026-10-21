package C2;

import G2.r;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import androidx.media3.exoplayer.source.ProgressiveMediaSource;
import com.bumptech.glide.Priority;
import java.util.Map;
import l2.m;
import l2.p;
import l2.q;
import l2.t;
import n2.u;
import u2.AbstractC1679f;
import u2.AbstractC1693u;
import u2.C1670A;
import u2.C1672C;
import u2.C1682i;
import u2.C1683j;
import y2.C1882d;

/* loaded from: classes.dex */
public abstract class a implements Cloneable {

    /* renamed from: B, reason: collision with root package name */
    public boolean f474B;

    /* renamed from: b, reason: collision with root package name */
    public int f475b;

    /* renamed from: m, reason: collision with root package name */
    public int f479m;

    /* renamed from: s, reason: collision with root package name */
    public boolean f484s;

    /* renamed from: x, reason: collision with root package name */
    public boolean f489x;

    /* renamed from: y, reason: collision with root package name */
    public Resources.Theme f490y;

    /* renamed from: z, reason: collision with root package name */
    public boolean f491z;

    /* renamed from: e, reason: collision with root package name */
    public float f476e = 1.0f;

    /* renamed from: f, reason: collision with root package name */
    public u f477f = u.f18993d;

    /* renamed from: j, reason: collision with root package name */
    public Priority f478j = Priority.f9123f;

    /* renamed from: n, reason: collision with root package name */
    public boolean f480n = true;

    /* renamed from: p, reason: collision with root package name */
    public int f481p = -1;

    /* renamed from: q, reason: collision with root package name */
    public int f482q = -1;

    /* renamed from: r, reason: collision with root package name */
    public m f483r = F2.c.obtain();

    /* renamed from: t, reason: collision with root package name */
    public boolean f485t = true;

    /* renamed from: u, reason: collision with root package name */
    public q f486u = new q();

    /* renamed from: v, reason: collision with root package name */
    public G2.d f487v = new G2.d();

    /* renamed from: w, reason: collision with root package name */
    public Class f488w = Object.class;

    /* renamed from: A, reason: collision with root package name */
    public boolean f473A = true;

    public static boolean a(int i2, int i7) {
        return (i2 & i7) != 0;
    }

    public a apply(a aVar) {
        if (this.f491z) {
            return mo0clone().apply(aVar);
        }
        if (a(aVar.f475b, 2)) {
            this.f476e = aVar.f476e;
        }
        if (a(aVar.f475b, ProgressiveMediaSource.DEFAULT_LOADING_CHECK_INTERVAL_BYTES)) {
            this.f474B = aVar.f474B;
        }
        if (a(aVar.f475b, 4)) {
            this.f477f = aVar.f477f;
        }
        if (a(aVar.f475b, 8)) {
            this.f478j = aVar.f478j;
        }
        if (a(aVar.f475b, 16)) {
            this.f479m = 0;
            this.f475b &= -33;
        }
        if (a(aVar.f475b, 32)) {
            this.f479m = aVar.f479m;
            this.f475b &= -17;
        }
        if (a(aVar.f475b, 64)) {
            this.f475b &= -129;
        }
        if (a(aVar.f475b, 128)) {
            this.f475b &= -65;
        }
        if (a(aVar.f475b, 256)) {
            this.f480n = aVar.f480n;
        }
        if (a(aVar.f475b, 512)) {
            this.f482q = aVar.f482q;
            this.f481p = aVar.f481p;
        }
        if (a(aVar.f475b, 1024)) {
            this.f483r = aVar.f483r;
        }
        if (a(aVar.f475b, 4096)) {
            this.f488w = aVar.f488w;
        }
        if (a(aVar.f475b, 8192)) {
            this.f475b &= -16385;
        }
        if (a(aVar.f475b, 16384)) {
            this.f475b &= -8193;
        }
        if (a(aVar.f475b, 32768)) {
            this.f490y = aVar.f490y;
        }
        if (a(aVar.f475b, 65536)) {
            this.f485t = aVar.f485t;
        }
        if (a(aVar.f475b, 131072)) {
            this.f484s = aVar.f484s;
        }
        if (a(aVar.f475b, 2048)) {
            this.f487v.putAll((Map) aVar.f487v);
            this.f473A = aVar.f473A;
        }
        if (!this.f485t) {
            this.f487v.clear();
            int i2 = this.f475b;
            this.f484s = false;
            this.f475b = i2 & (-133121);
            this.f473A = true;
        }
        this.f475b |= aVar.f475b;
        this.f486u.putAll(aVar.f486u);
        return selfOrThrowIfLocked();
    }

    public a autoClone() {
        if (this.f489x && !this.f491z) {
            throw new IllegalStateException("You cannot auto lock an already locked options object, try clone() first");
        }
        this.f491z = true;
        return lock();
    }

    public final a b(AbstractC1693u abstractC1693u, AbstractC1679f abstractC1679f) {
        if (this.f491z) {
            return mo0clone().b(abstractC1693u, abstractC1679f);
        }
        downsample(abstractC1693u);
        return f(abstractC1679f, false);
    }

    public final a c(p pVar) {
        if (this.f491z) {
            return mo0clone().c(pVar);
        }
        this.f486u.remove(pVar);
        return selfOrThrowIfLocked();
    }

    public a centerCrop() {
        return g(AbstractC1693u.f20299c, new C1682i());
    }

    public a centerInside() {
        return d(AbstractC1693u.f20298b, new C1683j(), true);
    }

    public final a d(AbstractC1693u abstractC1693u, AbstractC1679f abstractC1679f, boolean z6) {
        a g7 = z6 ? g(abstractC1693u, abstractC1679f) : b(abstractC1693u, abstractC1679f);
        g7.f473A = true;
        return g7;
    }

    public a decode(Class<?> cls) {
        if (this.f491z) {
            return mo0clone().decode(cls);
        }
        this.f488w = (Class) r.checkNotNull(cls);
        this.f475b |= 4096;
        return selfOrThrowIfLocked();
    }

    public a diskCacheStrategy(u uVar) {
        if (this.f491z) {
            return mo0clone().diskCacheStrategy(uVar);
        }
        this.f477f = (u) r.checkNotNull(uVar);
        this.f475b |= 4;
        return selfOrThrowIfLocked();
    }

    public a downsample(AbstractC1693u abstractC1693u) {
        return set(AbstractC1693u.f20302f, r.checkNotNull(abstractC1693u));
    }

    public final a e(Class cls, t tVar, boolean z6) {
        if (this.f491z) {
            return mo0clone().e(cls, tVar, z6);
        }
        r.checkNotNull(cls);
        r.checkNotNull(tVar);
        this.f487v.put(cls, tVar);
        int i2 = this.f475b;
        this.f485t = true;
        this.f475b = 67584 | i2;
        this.f473A = false;
        if (z6) {
            this.f475b = i2 | 198656;
            this.f484s = true;
        }
        return selfOrThrowIfLocked();
    }

    public boolean equals(Object obj) {
        if (obj instanceof a) {
            return isEquivalentTo((a) obj);
        }
        return false;
    }

    public a error(int i2) {
        if (this.f491z) {
            return mo0clone().error(i2);
        }
        this.f479m = i2;
        this.f475b = (this.f475b | 32) & (-17);
        return selfOrThrowIfLocked();
    }

    public final a f(t tVar, boolean z6) {
        if (this.f491z) {
            return mo0clone().f(tVar, z6);
        }
        C1670A c1670a = new C1670A(tVar, z6);
        e(Bitmap.class, tVar, z6);
        e(Drawable.class, c1670a, z6);
        e(BitmapDrawable.class, c1670a.asBitmapDrawable(), z6);
        e(C1882d.class, new y2.g(tVar), z6);
        return selfOrThrowIfLocked();
    }

    public final a g(AbstractC1693u abstractC1693u, AbstractC1679f abstractC1679f) {
        if (this.f491z) {
            return mo0clone().g(abstractC1693u, abstractC1679f);
        }
        downsample(abstractC1693u);
        return transform(abstractC1679f);
    }

    public final u getDiskCacheStrategy() {
        return this.f477f;
    }

    public final int getErrorId() {
        return this.f479m;
    }

    public final Drawable getErrorPlaceholder() {
        return null;
    }

    public final Drawable getFallbackDrawable() {
        return null;
    }

    public final int getFallbackId() {
        return 0;
    }

    public final boolean getOnlyRetrieveFromCache() {
        return false;
    }

    public final q getOptions() {
        return this.f486u;
    }

    public final int getOverrideHeight() {
        return this.f481p;
    }

    public final int getOverrideWidth() {
        return this.f482q;
    }

    public final Drawable getPlaceholderDrawable() {
        return null;
    }

    public final int getPlaceholderId() {
        return 0;
    }

    public final Priority getPriority() {
        return this.f478j;
    }

    public final Class<?> getResourceClass() {
        return this.f488w;
    }

    public final m getSignature() {
        return this.f483r;
    }

    public final float getSizeMultiplier() {
        return this.f476e;
    }

    public final Resources.Theme getTheme() {
        return this.f490y;
    }

    public final Map<Class<?>, t> getTransformations() {
        return this.f487v;
    }

    public final boolean getUseAnimationPool() {
        return this.f474B;
    }

    public final boolean getUseUnlimitedSourceGeneratorsPool() {
        return false;
    }

    public int hashCode() {
        return G2.t.hashCode(this.f490y, G2.t.hashCode(this.f483r, G2.t.hashCode(this.f488w, G2.t.hashCode(this.f487v, G2.t.hashCode(this.f486u, G2.t.hashCode(this.f478j, G2.t.hashCode(this.f477f, G2.t.hashCode(false, G2.t.hashCode(false, G2.t.hashCode(this.f485t, G2.t.hashCode(this.f484s, G2.t.hashCode(this.f482q, G2.t.hashCode(this.f481p, G2.t.hashCode(this.f480n, G2.t.hashCode((Object) null, G2.t.hashCode(0, G2.t.hashCode((Object) null, G2.t.hashCode(0, G2.t.hashCode((Object) null, G2.t.hashCode(this.f479m, G2.t.hashCode(this.f476e)))))))))))))))))))));
    }

    public final boolean isAutoCloneEnabled() {
        return this.f491z;
    }

    public final boolean isEquivalentTo(a aVar) {
        return Float.compare(aVar.f476e, this.f476e) == 0 && this.f479m == aVar.f479m && G2.t.bothNullOrEqual(null, null) && G2.t.bothNullOrEqual(null, null) && G2.t.bothNullOrEqual(null, null) && this.f480n == aVar.f480n && this.f481p == aVar.f481p && this.f482q == aVar.f482q && this.f484s == aVar.f484s && this.f485t == aVar.f485t && this.f477f.equals(aVar.f477f) && this.f478j == aVar.f478j && this.f486u.equals(aVar.f486u) && this.f487v.equals(aVar.f487v) && this.f488w.equals(aVar.f488w) && G2.t.bothNullOrEqual(this.f483r, aVar.f483r) && G2.t.bothNullOrEqual(this.f490y, aVar.f490y);
    }

    public final boolean isMemoryCacheable() {
        return this.f480n;
    }

    public final boolean isPrioritySet() {
        return a(this.f475b, 8);
    }

    public final boolean isTransformationAllowed() {
        return this.f485t;
    }

    public final boolean isTransformationRequired() {
        return this.f484s;
    }

    public final boolean isTransformationSet() {
        return a(this.f475b, 2048);
    }

    public final boolean isValidOverride() {
        return G2.t.isValidDimensions(this.f482q, this.f481p);
    }

    public a lock() {
        this.f489x = true;
        return this;
    }

    public a optionalCenterCrop() {
        return b(AbstractC1693u.f20299c, new C1682i());
    }

    public a optionalCenterInside() {
        return d(AbstractC1693u.f20298b, new C1683j(), false);
    }

    public a optionalFitCenter() {
        return d(AbstractC1693u.f20297a, new C1672C(), false);
    }

    public a override(int i2, int i7) {
        if (this.f491z) {
            return mo0clone().override(i2, i7);
        }
        this.f482q = i2;
        this.f481p = i7;
        this.f475b |= 512;
        return selfOrThrowIfLocked();
    }

    public a priority(Priority priority) {
        if (this.f491z) {
            return mo0clone().priority(priority);
        }
        this.f478j = (Priority) r.checkNotNull(priority);
        this.f475b |= 8;
        return selfOrThrowIfLocked();
    }

    public final a selfOrThrowIfLocked() {
        if (this.f489x) {
            throw new IllegalStateException("You cannot modify locked T, consider clone()");
        }
        return this;
    }

    public <Y> a set(p pVar, Y y6) {
        if (this.f491z) {
            return mo0clone().set(pVar, y6);
        }
        r.checkNotNull(pVar);
        r.checkNotNull(y6);
        this.f486u.set(pVar, y6);
        return selfOrThrowIfLocked();
    }

    public a signature(m mVar) {
        if (this.f491z) {
            return mo0clone().signature(mVar);
        }
        this.f483r = (m) r.checkNotNull(mVar);
        this.f475b |= 1024;
        return selfOrThrowIfLocked();
    }

    public a skipMemoryCache(boolean z6) {
        if (this.f491z) {
            return mo0clone().skipMemoryCache(true);
        }
        this.f480n = !z6;
        this.f475b |= 256;
        return selfOrThrowIfLocked();
    }

    public a theme(Resources.Theme theme) {
        if (this.f491z) {
            return mo0clone().theme(theme);
        }
        this.f490y = theme;
        if (theme != null) {
            this.f475b |= 32768;
            return set(w2.h.f20678b, theme);
        }
        this.f475b &= -32769;
        return c(w2.h.f20678b);
    }

    public a transform(t tVar) {
        return f(tVar, true);
    }

    public a useAnimationPool(boolean z6) {
        if (this.f491z) {
            return mo0clone().useAnimationPool(z6);
        }
        this.f474B = z6;
        this.f475b |= ProgressiveMediaSource.DEFAULT_LOADING_CHECK_INTERVAL_BYTES;
        return selfOrThrowIfLocked();
    }

    @Override // 
    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public a mo0clone() {
        try {
            a aVar = (a) super.clone();
            q qVar = new q();
            aVar.f486u = qVar;
            qVar.putAll(this.f486u);
            G2.d dVar = new G2.d();
            aVar.f487v = dVar;
            dVar.putAll((Map) this.f487v);
            aVar.f489x = false;
            aVar.f491z = false;
            return aVar;
        } catch (CloneNotSupportedException e3) {
            throw new RuntimeException(e3);
        }
    }
}
