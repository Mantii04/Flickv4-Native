package m4;

import java.io.PrintWriter;

/* loaded from: classes2.dex */
public final class Q {

    /* renamed from: a, reason: collision with root package name */
    public final int f18656a;

    /* renamed from: b, reason: collision with root package name */
    public final int f18657b;

    /* renamed from: c, reason: collision with root package name */
    public final long f18658c;

    /* renamed from: d, reason: collision with root package name */
    public final long f18659d;

    /* renamed from: e, reason: collision with root package name */
    public final long f18660e;

    /* renamed from: f, reason: collision with root package name */
    public final long f18661f;

    /* renamed from: g, reason: collision with root package name */
    public final long f18662g;

    /* renamed from: h, reason: collision with root package name */
    public final long f18663h;

    /* renamed from: i, reason: collision with root package name */
    public final long f18664i;

    /* renamed from: j, reason: collision with root package name */
    public final long f18665j;

    /* renamed from: k, reason: collision with root package name */
    public final int f18666k;

    /* renamed from: l, reason: collision with root package name */
    public final int f18667l;

    /* renamed from: m, reason: collision with root package name */
    public final int f18668m;

    /* renamed from: n, reason: collision with root package name */
    public final long f18669n;

    public Q(int i2, int i7, long j7, long j8, long j9, long j10, long j11, long j12, long j13, long j14, int i8, int i9, int i10, long j15) {
        this.f18656a = i2;
        this.f18657b = i7;
        this.f18658c = j7;
        this.f18659d = j8;
        this.f18660e = j9;
        this.f18661f = j10;
        this.f18662g = j11;
        this.f18663h = j12;
        this.f18664i = j13;
        this.f18665j = j14;
        this.f18666k = i8;
        this.f18667l = i9;
        this.f18668m = i10;
        this.f18669n = j15;
    }

    public void dump(PrintWriter printWriter) {
        printWriter.println("===============BEGIN PICASSO STATS ===============");
        printWriter.println("Memory Cache Stats");
        printWriter.print("  Max Cache Size: ");
        printWriter.println(this.f18656a);
        printWriter.print("  Cache Size: ");
        printWriter.println(this.f18657b);
        printWriter.print("  Cache % Full: ");
        printWriter.println((int) Math.ceil((r1 / r0) * 100.0f));
        printWriter.print("  Cache Hits: ");
        printWriter.println(this.f18658c);
        printWriter.print("  Cache Misses: ");
        printWriter.println(this.f18659d);
        printWriter.println("Network Stats");
        printWriter.print("  Download Count: ");
        printWriter.println(this.f18666k);
        printWriter.print("  Total Download Size: ");
        printWriter.println(this.f18660e);
        printWriter.print("  Average Download Size: ");
        printWriter.println(this.f18663h);
        printWriter.println("Bitmap Stats");
        printWriter.print("  Total Bitmaps Decoded: ");
        printWriter.println(this.f18667l);
        printWriter.print("  Total Bitmap Size: ");
        printWriter.println(this.f18661f);
        printWriter.print("  Total Transformed Bitmaps: ");
        printWriter.println(this.f18668m);
        printWriter.print("  Total Transformed Bitmap Size: ");
        printWriter.println(this.f18662g);
        printWriter.print("  Average Bitmap Size: ");
        printWriter.println(this.f18664i);
        printWriter.print("  Average Transformed Bitmap Size: ");
        printWriter.println(this.f18665j);
        printWriter.println("===============END PICASSO STATS ===============");
        printWriter.flush();
    }

    public String toString() {
        return "StatsSnapshot{maxSize=" + this.f18656a + ", size=" + this.f18657b + ", cacheHits=" + this.f18658c + ", cacheMisses=" + this.f18659d + ", downloadCount=" + this.f18666k + ", totalDownloadSize=" + this.f18660e + ", averageDownloadSize=" + this.f18663h + ", totalOriginalBitmapSize=" + this.f18661f + ", totalTransformedBitmapSize=" + this.f18662g + ", averageOriginalBitmapSize=" + this.f18664i + ", averageTransformedBitmapSize=" + this.f18665j + ", originalBitmapCount=" + this.f18667l + ", transformedBitmapCount=" + this.f18668m + ", timeStamp=" + this.f18669n + '}';
    }
}
