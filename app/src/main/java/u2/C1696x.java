package u2;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Build;
import android.os.ParcelFileDescriptor;
import android.util.DisplayMetrics;
import com.bumptech.glide.load.DecodeFormat;
import com.bumptech.glide.load.ImageHeaderParser$ImageType;
import com.bumptech.glide.load.PreferredColorSpace;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.Collections;
import java.util.EnumSet;
import java.util.HashSet;
import java.util.List;
import java.util.Queue;
import java.util.Set;
import l2.InterfaceC1222c;
import n2.InterfaceC1391M;
import o2.C1438l;
import o2.InterfaceC1428b;
import o2.InterfaceC1430d;

/* renamed from: u2.x, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1696x {

    /* renamed from: f, reason: collision with root package name */
    public static final l2.p f20304f = l2.p.memory("com.bumptech.glide.load.resource.bitmap.Downsampler.DecodeFormat", DecodeFormat.f9187f);

    /* renamed from: g, reason: collision with root package name */
    public static final l2.p f20305g = l2.p.memory("com.bumptech.glide.load.resource.bitmap.Downsampler.PreferredColorSpace");

    /* renamed from: h, reason: collision with root package name */
    public static final l2.p f20306h;

    /* renamed from: i, reason: collision with root package name */
    public static final l2.p f20307i;

    /* renamed from: j, reason: collision with root package name */
    public static final Set f20308j;

    /* renamed from: k, reason: collision with root package name */
    public static final C1694v f20309k;

    /* renamed from: l, reason: collision with root package name */
    public static final Queue f20310l;

    /* renamed from: a, reason: collision with root package name */
    public final InterfaceC1430d f20311a;

    /* renamed from: b, reason: collision with root package name */
    public final DisplayMetrics f20312b;

    /* renamed from: c, reason: collision with root package name */
    public final InterfaceC1428b f20313c;

    /* renamed from: d, reason: collision with root package name */
    public final List f20314d;

    /* renamed from: e, reason: collision with root package name */
    public final C1673D f20315e = C1673D.getInstance();

    static {
        C1691s c1691s = AbstractC1693u.f20297a;
        Boolean bool = Boolean.FALSE;
        f20306h = l2.p.memory("com.bumptech.glide.load.resource.bitmap.Downsampler.FixBitmapSize", bool);
        f20307i = l2.p.memory("com.bumptech.glide.load.resource.bitmap.Downsampler.AllowHardwareDecode", bool);
        f20308j = Collections.unmodifiableSet(new HashSet(Arrays.asList("image/vnd.wap.wbmp", "image/x-ico")));
        f20309k = new C1694v();
        Collections.unmodifiableSet(EnumSet.of(ImageHeaderParser$ImageType.JPEG, ImageHeaderParser$ImageType.PNG_A, ImageHeaderParser$ImageType.PNG));
        f20310l = G2.t.createQueue(0);
    }

    public C1696x(List<InterfaceC1222c> list, DisplayMetrics displayMetrics, InterfaceC1430d interfaceC1430d, InterfaceC1428b interfaceC1428b) {
        this.f20314d = list;
        this.f20312b = (DisplayMetrics) G2.r.checkNotNull(displayMetrics);
        this.f20311a = (InterfaceC1430d) G2.r.checkNotNull(interfaceC1430d);
        this.f20313c = (InterfaceC1428b) G2.r.checkNotNull(interfaceC1428b);
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:?, code lost:
    
        throw r5;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.graphics.Bitmap c(u2.H r9, android.graphics.BitmapFactory.Options r10, u2.InterfaceC1695w r11, o2.InterfaceC1430d r12) {
        /*
            java.lang.String r0 = "Downsampler"
            boolean r1 = r10.inJustDecodeBounds
            if (r1 != 0) goto Lc
            r11.onObtainBounds()
            r9.stopGrowingBuffers()
        Lc:
            int r1 = r10.outWidth
            int r2 = r10.outHeight
            java.lang.String r3 = r10.outMimeType
            java.util.concurrent.locks.Lock r4 = u2.P.getBitmapDrawableLock()
            r4.lock()
            android.graphics.Bitmap r9 = r9.decodeBitmap(r10)     // Catch: java.lang.IllegalArgumentException -> L25 java.lang.Throwable -> L67
        L1d:
            java.util.concurrent.locks.Lock r10 = u2.P.getBitmapDrawableLock()
            r10.unlock()
            return r9
        L25:
            r4 = move-exception
            java.io.IOException r5 = new java.io.IOException     // Catch: java.lang.Throwable -> L67
            java.lang.String r6 = "Exception decoding bitmap, outWidth: "
            java.lang.String r7 = ", outHeight: "
            java.lang.String r8 = ", outMimeType: "
            java.lang.StringBuilder r1 = A.i.p(r1, r2, r6, r7, r8)     // Catch: java.lang.Throwable -> L67
            r1.append(r3)     // Catch: java.lang.Throwable -> L67
            java.lang.String r2 = ", inBitmap: "
            r1.append(r2)     // Catch: java.lang.Throwable -> L67
            android.graphics.Bitmap r2 = r10.inBitmap     // Catch: java.lang.Throwable -> L67
            java.lang.String r2 = d(r2)     // Catch: java.lang.Throwable -> L67
            r1.append(r2)     // Catch: java.lang.Throwable -> L67
            java.lang.String r1 = r1.toString()     // Catch: java.lang.Throwable -> L67
            r5.<init>(r1, r4)     // Catch: java.lang.Throwable -> L67
            r1 = 3
            boolean r1 = android.util.Log.isLoggable(r0, r1)     // Catch: java.lang.Throwable -> L67
            if (r1 == 0) goto L56
            java.lang.String r1 = "Failed to decode with inBitmap, trying again without Bitmap re-use"
            android.util.Log.d(r0, r1, r5)     // Catch: java.lang.Throwable -> L67
        L56:
            android.graphics.Bitmap r0 = r10.inBitmap     // Catch: java.lang.Throwable -> L67
            if (r0 == 0) goto L66
            r12.put(r0)     // Catch: java.io.IOException -> L65 java.lang.Throwable -> L67
            r0 = 0
            r10.inBitmap = r0     // Catch: java.io.IOException -> L65 java.lang.Throwable -> L67
            android.graphics.Bitmap r9 = c(r9, r10, r11, r12)     // Catch: java.io.IOException -> L65 java.lang.Throwable -> L67
            goto L1d
        L65:
            throw r5     // Catch: java.lang.Throwable -> L67
        L66:
            throw r5     // Catch: java.lang.Throwable -> L67
        L67:
            r9 = move-exception
            java.util.concurrent.locks.Lock r10 = u2.P.getBitmapDrawableLock()
            r10.unlock()
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: u2.C1696x.c(u2.H, android.graphics.BitmapFactory$Options, u2.w, o2.d):android.graphics.Bitmap");
    }

    public static String d(Bitmap bitmap) {
        if (bitmap == null) {
            return null;
        }
        return "[" + bitmap.getWidth() + "x" + bitmap.getHeight() + "] " + bitmap.getConfig() + (" (" + bitmap.getAllocationByteCount() + ")");
    }

    public static void e(BitmapFactory.Options options) {
        f(options);
        Queue queue = f20310l;
        synchronized (queue) {
            queue.offer(options);
        }
    }

    public static void f(BitmapFactory.Options options) {
        options.inTempStorage = null;
        options.inDither = false;
        options.inScaled = false;
        options.inSampleSize = 1;
        options.inPreferredConfig = null;
        options.inJustDecodeBounds = false;
        options.inDensity = 0;
        options.inTargetDensity = 0;
        if (Build.VERSION.SDK_INT >= 26) {
            options.inPreferredColorSpace = null;
            options.outColorSpace = null;
            options.outConfig = null;
        }
        options.outWidth = 0;
        options.outHeight = 0;
        options.outMimeType = null;
        options.inBitmap = null;
        options.inMutable = true;
    }

    public final C1678e a(H h7, int i2, int i7, l2.q qVar, InterfaceC1695w interfaceC1695w) {
        BitmapFactory.Options options;
        BitmapFactory.Options options2;
        byte[] bArr = (byte[]) ((C1438l) this.f20313c).get(65536, byte[].class);
        synchronized (C1696x.class) {
            Queue queue = f20310l;
            synchronized (queue) {
                options = (BitmapFactory.Options) queue.poll();
            }
            if (options == null) {
                options = new BitmapFactory.Options();
                f(options);
            }
            options2 = options;
        }
        options2.inTempStorage = bArr;
        DecodeFormat decodeFormat = (DecodeFormat) qVar.get(f20304f);
        PreferredColorSpace preferredColorSpace = (PreferredColorSpace) qVar.get(f20305g);
        AbstractC1693u abstractC1693u = (AbstractC1693u) qVar.get(AbstractC1693u.f20302f);
        boolean booleanValue = ((Boolean) qVar.get(f20306h)).booleanValue();
        l2.p pVar = f20307i;
        try {
            return C1678e.obtain(b(h7, options2, abstractC1693u, decodeFormat, preferredColorSpace, qVar.get(pVar) != null && ((Boolean) qVar.get(pVar)).booleanValue(), i2, i7, booleanValue, interfaceC1695w), this.f20311a);
        } finally {
            e(options2);
            ((C1438l) this.f20313c).put(bArr);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x04c2  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x03df  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x0358  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x0388  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x03c5  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x026c  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x01e2  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x01b5  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x013d  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x011e  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x01b2  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x01df  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0206  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x03d1  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x03e2  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x03f1  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0410  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0415  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x043b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.graphics.Bitmap b(u2.H r41, android.graphics.BitmapFactory.Options r42, u2.AbstractC1693u r43, com.bumptech.glide.load.DecodeFormat r44, com.bumptech.glide.load.PreferredColorSpace r45, boolean r46, int r47, int r48, boolean r49, u2.InterfaceC1695w r50) {
        /*
            Method dump skipped, instructions count: 1241
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: u2.C1696x.b(u2.H, android.graphics.BitmapFactory$Options, u2.u, com.bumptech.glide.load.DecodeFormat, com.bumptech.glide.load.PreferredColorSpace, boolean, int, int, boolean, u2.w):android.graphics.Bitmap");
    }

    public InterfaceC1391M decode(ByteBuffer byteBuffer, int i2, int i7, l2.q qVar) throws IOException {
        return a(new E(this.f20314d, byteBuffer, this.f20313c), i2, i7, qVar, f20309k);
    }

    public boolean handles(InputStream inputStream) {
        return true;
    }

    public InterfaceC1391M decode(InputStream inputStream, int i2, int i7, l2.q qVar, InterfaceC1695w interfaceC1695w) throws IOException {
        return a(new F(this.f20314d, inputStream, this.f20313c), i2, i7, qVar, interfaceC1695w);
    }

    public boolean handles(ByteBuffer byteBuffer) {
        return true;
    }

    public InterfaceC1391M decode(ParcelFileDescriptor parcelFileDescriptor, int i2, int i7, l2.q qVar) throws IOException {
        return a(new G(parcelFileDescriptor, this.f20314d, this.f20313c), i2, i7, qVar, f20309k);
    }

    public boolean handles(ParcelFileDescriptor parcelFileDescriptor) {
        return com.bumptech.glide.load.data.t.isSupported();
    }
}
