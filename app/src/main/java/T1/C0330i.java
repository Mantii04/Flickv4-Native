package T1;

import android.graphics.Rect;
import b2.C0645e;
import f2.AbstractC0923d;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* renamed from: T1.i, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0330i {

    /* renamed from: c, reason: collision with root package name */
    public Map f3607c;

    /* renamed from: d, reason: collision with root package name */
    public Map f3608d;

    /* renamed from: e, reason: collision with root package name */
    public Map f3609e;

    /* renamed from: f, reason: collision with root package name */
    public List f3610f;

    /* renamed from: g, reason: collision with root package name */
    public p.r f3611g;

    /* renamed from: h, reason: collision with root package name */
    public p.n f3612h;

    /* renamed from: i, reason: collision with root package name */
    public List f3613i;

    /* renamed from: j, reason: collision with root package name */
    public Rect f3614j;

    /* renamed from: k, reason: collision with root package name */
    public float f3615k;

    /* renamed from: l, reason: collision with root package name */
    public float f3616l;

    /* renamed from: m, reason: collision with root package name */
    public float f3617m;

    /* renamed from: n, reason: collision with root package name */
    public boolean f3618n;

    /* renamed from: a, reason: collision with root package name */
    public final P f3605a = new P();

    /* renamed from: b, reason: collision with root package name */
    public final HashSet f3606b = new HashSet();

    /* renamed from: o, reason: collision with root package name */
    public int f3619o = 0;

    public void addWarning(String str) {
        AbstractC0923d.warning(str);
        this.f3606b.add(str);
    }

    public Rect getBounds() {
        return this.f3614j;
    }

    public p.r getCharacters() {
        return this.f3611g;
    }

    public float getDuration() {
        return (long) ((getDurationFrames() / this.f3617m) * 1000.0f);
    }

    public float getDurationFrames() {
        return this.f3616l - this.f3615k;
    }

    public float getEndFrame() {
        return this.f3616l;
    }

    public Map<String, Y1.c> getFonts() {
        return this.f3609e;
    }

    public float getFrameRate() {
        return this.f3617m;
    }

    public Map<String, H> getImages() {
        return this.f3608d;
    }

    public List<C0645e> getLayers() {
        return this.f3613i;
    }

    public Y1.h getMarker(String str) {
        this.f3610f.size();
        for (int i2 = 0; i2 < this.f3610f.size(); i2++) {
            Y1.h hVar = (Y1.h) this.f3610f.get(i2);
            if (hVar.matchesName(str)) {
                return hVar;
            }
        }
        return null;
    }

    public int getMaskAndMatteCount() {
        return this.f3619o;
    }

    public P getPerformanceTracker() {
        return this.f3605a;
    }

    public List<C0645e> getPrecomps(String str) {
        return (List) this.f3607c.get(str);
    }

    public float getStartFrame() {
        return this.f3615k;
    }

    public boolean hasDashPattern() {
        return this.f3618n;
    }

    public void incrementMatteOrMaskCount(int i2) {
        this.f3619o += i2;
    }

    public void init(Rect rect, float f3, float f7, float f8, List<C0645e> list, p.n nVar, Map<String, List<C0645e>> map, Map<String, H> map2, p.r rVar, Map<String, Y1.c> map3, List<Y1.h> list2) {
        this.f3614j = rect;
        this.f3615k = f3;
        this.f3616l = f7;
        this.f3617m = f8;
        this.f3613i = list;
        this.f3612h = nVar;
        this.f3607c = map;
        this.f3608d = map2;
        this.f3611g = rVar;
        this.f3609e = map3;
        this.f3610f = list2;
    }

    public C0645e layerModelForId(long j7) {
        return (C0645e) this.f3612h.get(j7);
    }

    public void setHasDashPattern(boolean z6) {
        this.f3618n = z6;
    }

    public void setPerformanceTrackingEnabled(boolean z6) {
        this.f3605a.f3592a = z6;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("LottieComposition:\n");
        Iterator it = this.f3613i.iterator();
        while (it.hasNext()) {
            sb.append(((C0645e) it.next()).toString("\t"));
        }
        return sb.toString();
    }
}
