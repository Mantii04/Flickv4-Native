package y2;

import G2.r;
import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import com.bumptech.glide.q;
import java.util.ArrayList;
import l2.t;
import n2.u;
import o2.InterfaceC1430d;

/* loaded from: classes.dex */
public final class k {

    /* renamed from: a, reason: collision with root package name */
    public final k2.b f21080a;

    /* renamed from: b, reason: collision with root package name */
    public final Handler f21081b;

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f21082c;

    /* renamed from: d, reason: collision with root package name */
    public final q f21083d;

    /* renamed from: e, reason: collision with root package name */
    public final InterfaceC1430d f21084e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f21085f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f21086g;

    /* renamed from: h, reason: collision with root package name */
    public com.bumptech.glide.m f21087h;

    /* renamed from: i, reason: collision with root package name */
    public h f21088i;

    /* renamed from: j, reason: collision with root package name */
    public boolean f21089j;

    /* renamed from: k, reason: collision with root package name */
    public h f21090k;

    /* renamed from: l, reason: collision with root package name */
    public Bitmap f21091l;

    /* renamed from: m, reason: collision with root package name */
    public h f21092m;

    /* renamed from: n, reason: collision with root package name */
    public int f21093n;

    /* renamed from: o, reason: collision with root package name */
    public int f21094o;

    /* renamed from: p, reason: collision with root package name */
    public int f21095p;

    public k(com.bumptech.glide.c cVar, k2.b bVar, int i2, int i7, t tVar, Bitmap bitmap) {
        InterfaceC1430d bitmapPool = cVar.getBitmapPool();
        q with = com.bumptech.glide.c.with(cVar.getContext());
        com.bumptech.glide.m apply = com.bumptech.glide.c.with(cVar.getContext()).asBitmap().apply(((C2.f) ((C2.f) C2.f.diskCacheStrategyOf(u.f18990a).useAnimationPool(true)).skipMemoryCache(true)).override(i2, i7));
        this.f21082c = new ArrayList();
        this.f21083d = with;
        Handler handler = new Handler(Looper.getMainLooper(), new j(this));
        this.f21084e = bitmapPool;
        this.f21081b = handler;
        this.f21087h = apply;
        this.f21080a = bVar;
        c(tVar, bitmap);
    }

    public final void a() {
        if (!this.f21085f || this.f21086g) {
            return;
        }
        h hVar = this.f21092m;
        if (hVar != null) {
            this.f21092m = null;
            b(hVar);
            return;
        }
        this.f21086g = true;
        k2.b bVar = this.f21080a;
        k2.f fVar = (k2.f) bVar;
        long uptimeMillis = SystemClock.uptimeMillis() + fVar.getNextDelay();
        fVar.advance();
        this.f21090k = new h(this.f21081b, fVar.getCurrentFrameIndex(), uptimeMillis);
        this.f21087h.apply((C2.a) C2.f.signatureOf(new F2.d(Double.valueOf(Math.random())))).load(bVar).into((com.bumptech.glide.m) this.f21090k);
    }

    public final void b(h hVar) {
        this.f21086g = false;
        boolean z6 = this.f21089j;
        Handler handler = this.f21081b;
        if (z6) {
            handler.obtainMessage(2, hVar).sendToTarget();
            return;
        }
        if (!this.f21085f) {
            this.f21092m = hVar;
            return;
        }
        if (hVar.f21078p != null) {
            Bitmap bitmap = this.f21091l;
            if (bitmap != null) {
                this.f21084e.put(bitmap);
                this.f21091l = null;
            }
            h hVar2 = this.f21088i;
            this.f21088i = hVar;
            ArrayList arrayList = this.f21082c;
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                ((C1882d) ((i) arrayList.get(size))).onFrameReady();
            }
            if (hVar2 != null) {
                handler.obtainMessage(2, hVar2).sendToTarget();
            }
        }
        a();
    }

    public final void c(t tVar, Bitmap bitmap) {
        this.f21091l = (Bitmap) r.checkNotNull(bitmap);
        this.f21087h = this.f21087h.apply(new C2.f().transform(tVar));
        this.f21093n = G2.t.getBitmapByteSize(bitmap);
        this.f21094o = bitmap.getWidth();
        this.f21095p = bitmap.getHeight();
    }
}
