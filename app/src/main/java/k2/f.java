package k2;

import android.graphics.Bitmap;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Iterator;
import y2.C1880b;

/* loaded from: classes.dex */
public final class f implements b {

    /* renamed from: a, reason: collision with root package name */
    public int[] f17276a;

    /* renamed from: b, reason: collision with root package name */
    public final int[] f17277b;

    /* renamed from: c, reason: collision with root package name */
    public final InterfaceC1096a f17278c;

    /* renamed from: d, reason: collision with root package name */
    public ByteBuffer f17279d;

    /* renamed from: e, reason: collision with root package name */
    public byte[] f17280e;

    /* renamed from: f, reason: collision with root package name */
    public short[] f17281f;

    /* renamed from: g, reason: collision with root package name */
    public byte[] f17282g;

    /* renamed from: h, reason: collision with root package name */
    public byte[] f17283h;

    /* renamed from: i, reason: collision with root package name */
    public byte[] f17284i;

    /* renamed from: j, reason: collision with root package name */
    public int[] f17285j;

    /* renamed from: k, reason: collision with root package name */
    public int f17286k;

    /* renamed from: l, reason: collision with root package name */
    public d f17287l;

    /* renamed from: m, reason: collision with root package name */
    public Bitmap f17288m;

    /* renamed from: n, reason: collision with root package name */
    public boolean f17289n;

    /* renamed from: o, reason: collision with root package name */
    public int f17290o;

    /* renamed from: p, reason: collision with root package name */
    public int f17291p;

    /* renamed from: q, reason: collision with root package name */
    public int f17292q;

    /* renamed from: r, reason: collision with root package name */
    public int f17293r;

    /* renamed from: s, reason: collision with root package name */
    public Boolean f17294s;

    /* renamed from: t, reason: collision with root package name */
    public Bitmap.Config f17295t;

    public f(InterfaceC1096a interfaceC1096a, d dVar, ByteBuffer byteBuffer, int i2) {
        this(interfaceC1096a);
        setData(dVar, byteBuffer, i2);
    }

    public final Bitmap a() {
        Boolean bool = this.f17294s;
        Bitmap obtain = ((C1880b) this.f17278c).obtain(this.f17293r, this.f17292q, (bool == null || bool.booleanValue()) ? Bitmap.Config.ARGB_8888 : this.f17295t);
        obtain.setHasAlpha(true);
        return obtain;
    }

    @Override // k2.b
    public void advance() {
        this.f17286k = (this.f17286k + 1) % this.f17287l.f17263c;
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0044, code lost:
    
        if (r4.f17270j == r35.f17257h) goto L26;
     */
    /* JADX WARN: Removed duplicated region for block: B:27:0x005d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.graphics.Bitmap b(k2.c r35, k2.c r36) {
        /*
            Method dump skipped, instructions count: 1032
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: k2.f.b(k2.c, k2.c):android.graphics.Bitmap");
    }

    public void clear() {
        this.f17287l = null;
        byte[] bArr = this.f17284i;
        InterfaceC1096a interfaceC1096a = this.f17278c;
        if (bArr != null) {
            ((C1880b) interfaceC1096a).release(bArr);
        }
        int[] iArr = this.f17285j;
        if (iArr != null) {
            ((C1880b) interfaceC1096a).release(iArr);
        }
        Bitmap bitmap = this.f17288m;
        if (bitmap != null) {
            ((C1880b) interfaceC1096a).release(bitmap);
        }
        this.f17288m = null;
        this.f17279d = null;
        this.f17294s = null;
        byte[] bArr2 = this.f17280e;
        if (bArr2 != null) {
            ((C1880b) interfaceC1096a).release(bArr2);
        }
    }

    public int getByteSize() {
        return (this.f17285j.length * 4) + this.f17279d.limit() + this.f17284i.length;
    }

    public int getCurrentFrameIndex() {
        return this.f17286k;
    }

    public ByteBuffer getData() {
        return this.f17279d;
    }

    public int getDelay(int i2) {
        if (i2 < 0) {
            return -1;
        }
        d dVar = this.f17287l;
        if (i2 < dVar.f17263c) {
            return ((c) dVar.f17265e.get(i2)).f17258i;
        }
        return -1;
    }

    public int getFrameCount() {
        return this.f17287l.f17263c;
    }

    public int getNextDelay() {
        int i2;
        if (this.f17287l.f17263c <= 0 || (i2 = this.f17286k) < 0) {
            return 0;
        }
        return getDelay(i2);
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0051 A[Catch: all -> 0x0014, TryCatch #0 {all -> 0x0014, blocks: (B:4:0x0007, B:6:0x000f, B:9:0x0040, B:14:0x004a, B:16:0x0051, B:17:0x005d, B:19:0x006e, B:20:0x007a, B:23:0x0083, B:25:0x0087, B:27:0x008f, B:28:0x00a2, B:32:0x00a6, B:34:0x00aa, B:36:0x00bc, B:38:0x00c0, B:39:0x00c4, B:42:0x007f, B:44:0x00ca, B:46:0x00d2, B:49:0x0017, B:51:0x001f, B:52:0x003e), top: B:3:0x0007 }] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x006e A[Catch: all -> 0x0014, TryCatch #0 {all -> 0x0014, blocks: (B:4:0x0007, B:6:0x000f, B:9:0x0040, B:14:0x004a, B:16:0x0051, B:17:0x005d, B:19:0x006e, B:20:0x007a, B:23:0x0083, B:25:0x0087, B:27:0x008f, B:28:0x00a2, B:32:0x00a6, B:34:0x00aa, B:36:0x00bc, B:38:0x00c0, B:39:0x00c4, B:42:0x007f, B:44:0x00ca, B:46:0x00d2, B:49:0x0017, B:51:0x001f, B:52:0x003e), top: B:3:0x0007 }] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x007e  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0087 A[Catch: all -> 0x0014, TryCatch #0 {all -> 0x0014, blocks: (B:4:0x0007, B:6:0x000f, B:9:0x0040, B:14:0x004a, B:16:0x0051, B:17:0x005d, B:19:0x006e, B:20:0x007a, B:23:0x0083, B:25:0x0087, B:27:0x008f, B:28:0x00a2, B:32:0x00a6, B:34:0x00aa, B:36:0x00bc, B:38:0x00c0, B:39:0x00c4, B:42:0x007f, B:44:0x00ca, B:46:0x00d2, B:49:0x0017, B:51:0x001f, B:52:0x003e), top: B:3:0x0007 }] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00a6 A[Catch: all -> 0x0014, TRY_ENTER, TryCatch #0 {all -> 0x0014, blocks: (B:4:0x0007, B:6:0x000f, B:9:0x0040, B:14:0x004a, B:16:0x0051, B:17:0x005d, B:19:0x006e, B:20:0x007a, B:23:0x0083, B:25:0x0087, B:27:0x008f, B:28:0x00a2, B:32:0x00a6, B:34:0x00aa, B:36:0x00bc, B:38:0x00c0, B:39:0x00c4, B:42:0x007f, B:44:0x00ca, B:46:0x00d2, B:49:0x0017, B:51:0x001f, B:52:0x003e), top: B:3:0x0007 }] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x007f A[Catch: all -> 0x0014, TryCatch #0 {all -> 0x0014, blocks: (B:4:0x0007, B:6:0x000f, B:9:0x0040, B:14:0x004a, B:16:0x0051, B:17:0x005d, B:19:0x006e, B:20:0x007a, B:23:0x0083, B:25:0x0087, B:27:0x008f, B:28:0x00a2, B:32:0x00a6, B:34:0x00aa, B:36:0x00bc, B:38:0x00c0, B:39:0x00c4, B:42:0x007f, B:44:0x00ca, B:46:0x00d2, B:49:0x0017, B:51:0x001f, B:52:0x003e), top: B:3:0x0007 }] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0079  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00d2 A[Catch: all -> 0x0014, TRY_LEAVE, TryCatch #0 {all -> 0x0014, blocks: (B:4:0x0007, B:6:0x000f, B:9:0x0040, B:14:0x004a, B:16:0x0051, B:17:0x005d, B:19:0x006e, B:20:0x007a, B:23:0x0083, B:25:0x0087, B:27:0x008f, B:28:0x00a2, B:32:0x00a6, B:34:0x00aa, B:36:0x00bc, B:38:0x00c0, B:39:0x00c4, B:42:0x007f, B:44:0x00ca, B:46:0x00d2, B:49:0x0017, B:51:0x001f, B:52:0x003e), top: B:3:0x0007 }] */
    @Override // k2.b
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized android.graphics.Bitmap getNextFrame() {
        /*
            Method dump skipped, instructions count: 233
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: k2.f.getNextFrame():android.graphics.Bitmap");
    }

    public synchronized void setData(d dVar, ByteBuffer byteBuffer, int i2) {
        try {
            if (i2 <= 0) {
                throw new IllegalArgumentException("Sample size must be >=0, not: " + i2);
            }
            int highestOneBit = Integer.highestOneBit(i2);
            this.f17290o = 0;
            this.f17287l = dVar;
            this.f17286k = -1;
            ByteBuffer asReadOnlyBuffer = byteBuffer.asReadOnlyBuffer();
            this.f17279d = asReadOnlyBuffer;
            asReadOnlyBuffer.position(0);
            this.f17279d.order(ByteOrder.LITTLE_ENDIAN);
            this.f17289n = false;
            Iterator it = dVar.f17265e.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                } else if (((c) it.next()).f17256g == 3) {
                    this.f17289n = true;
                    break;
                }
            }
            this.f17291p = highestOneBit;
            int i7 = dVar.f17266f;
            this.f17293r = i7 / highestOneBit;
            int i8 = dVar.f17267g;
            this.f17292q = i8 / highestOneBit;
            this.f17284i = ((C1880b) this.f17278c).obtainByteArray(i7 * i8);
            this.f17285j = ((C1880b) this.f17278c).obtainIntArray(this.f17293r * this.f17292q);
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // k2.b
    public void setDefaultBitmapConfig(Bitmap.Config config) {
        Bitmap.Config config2;
        Bitmap.Config config3 = Bitmap.Config.ARGB_8888;
        if (config == config3 || config == (config2 = Bitmap.Config.RGB_565)) {
            this.f17295t = config;
            return;
        }
        throw new IllegalArgumentException("Unsupported format: " + config + ", must be one of " + config3 + " or " + config2);
    }

    public f(InterfaceC1096a interfaceC1096a) {
        this.f17277b = new int[256];
        this.f17295t = Bitmap.Config.ARGB_8888;
        this.f17278c = interfaceC1096a;
        this.f17287l = new d();
    }
}
