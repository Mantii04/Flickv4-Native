package u2;

import com.bumptech.glide.load.resource.bitmap.DownsampleStrategy$SampleSizeRounding;

/* renamed from: u2.u, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC1693u {

    /* renamed from: a, reason: collision with root package name */
    public static final C1691s f20297a;

    /* renamed from: b, reason: collision with root package name */
    public static final C1690q f20298b;

    /* renamed from: c, reason: collision with root package name */
    public static final r f20299c;

    /* renamed from: d, reason: collision with root package name */
    public static final C1692t f20300d;

    /* renamed from: e, reason: collision with root package name */
    public static final r f20301e;

    /* renamed from: f, reason: collision with root package name */
    public static final l2.p f20302f;

    /* renamed from: g, reason: collision with root package name */
    public static final boolean f20303g;

    static {
        new C1688o();
        new C1689p();
        f20297a = new C1691s();
        f20298b = new C1690q();
        r rVar = new r();
        f20299c = rVar;
        f20300d = new C1692t();
        f20301e = rVar;
        f20302f = l2.p.memory("com.bumptech.glide.load.resource.bitmap.Downsampler.DownsampleStrategy", rVar);
        f20303g = true;
    }

    public abstract DownsampleStrategy$SampleSizeRounding getSampleSizeRounding(int i2, int i7, int i8, int i9);

    public abstract float getScaleFactor(int i2, int i7, int i8, int i9);
}
