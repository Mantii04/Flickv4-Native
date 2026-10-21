package v1;

import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;

/* renamed from: v1.d, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1745d {

    /* renamed from: a, reason: collision with root package name */
    public final RectF f20583a = new RectF();

    /* renamed from: b, reason: collision with root package name */
    public final Paint f20584b;

    /* renamed from: c, reason: collision with root package name */
    public final Paint f20585c;

    /* renamed from: d, reason: collision with root package name */
    public final Paint f20586d;

    /* renamed from: e, reason: collision with root package name */
    public float f20587e;

    /* renamed from: f, reason: collision with root package name */
    public float f20588f;

    /* renamed from: g, reason: collision with root package name */
    public float f20589g;

    /* renamed from: h, reason: collision with root package name */
    public float f20590h;

    /* renamed from: i, reason: collision with root package name */
    public int[] f20591i;

    /* renamed from: j, reason: collision with root package name */
    public int f20592j;

    /* renamed from: k, reason: collision with root package name */
    public float f20593k;

    /* renamed from: l, reason: collision with root package name */
    public float f20594l;

    /* renamed from: m, reason: collision with root package name */
    public float f20595m;

    /* renamed from: n, reason: collision with root package name */
    public boolean f20596n;

    /* renamed from: o, reason: collision with root package name */
    public Path f20597o;

    /* renamed from: p, reason: collision with root package name */
    public float f20598p;

    /* renamed from: q, reason: collision with root package name */
    public float f20599q;

    /* renamed from: r, reason: collision with root package name */
    public int f20600r;

    /* renamed from: s, reason: collision with root package name */
    public int f20601s;

    /* renamed from: t, reason: collision with root package name */
    public int f20602t;

    /* renamed from: u, reason: collision with root package name */
    public int f20603u;

    public C1745d() {
        Paint paint = new Paint();
        this.f20584b = paint;
        Paint paint2 = new Paint();
        this.f20585c = paint2;
        Paint paint3 = new Paint();
        this.f20586d = paint3;
        this.f20587e = 0.0f;
        this.f20588f = 0.0f;
        this.f20589g = 0.0f;
        this.f20590h = 5.0f;
        this.f20598p = 1.0f;
        this.f20602t = 255;
        paint.setStrokeCap(Paint.Cap.SQUARE);
        paint.setAntiAlias(true);
        paint.setStyle(Paint.Style.STROKE);
        paint2.setStyle(Paint.Style.FILL);
        paint2.setAntiAlias(true);
        paint3.setColor(0);
    }

    public final void a(int i2) {
        this.f20592j = i2;
        this.f20603u = this.f20591i[i2];
    }
}
