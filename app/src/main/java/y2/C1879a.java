package y2;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.Log;
import com.bumptech.glide.load.DecodeFormat;
import com.bumptech.glide.load.ImageHeaderParser$ImageType;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.List;
import l2.InterfaceC1222c;
import l2.q;
import l2.r;
import o2.InterfaceC1428b;
import o2.InterfaceC1430d;
import t2.C1653e;

/* renamed from: y2.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1879a implements r {

    /* renamed from: f, reason: collision with root package name */
    public static final J3.b f21054f = new J3.b();

    /* renamed from: g, reason: collision with root package name */
    public static final L0.f f21055g = new L0.f(5);

    /* renamed from: a, reason: collision with root package name */
    public final Context f21056a;

    /* renamed from: b, reason: collision with root package name */
    public final List f21057b;

    /* renamed from: c, reason: collision with root package name */
    public final L0.f f21058c;

    /* renamed from: d, reason: collision with root package name */
    public final J3.b f21059d;

    /* renamed from: e, reason: collision with root package name */
    public final C1880b f21060e;

    public C1879a(Context context, List<InterfaceC1222c> list, InterfaceC1430d interfaceC1430d, InterfaceC1428b interfaceC1428b) {
        J3.b bVar = f21054f;
        this.f21056a = context.getApplicationContext();
        this.f21057b = list;
        this.f21059d = bVar;
        this.f21060e = new C1880b(interfaceC1430d, interfaceC1428b);
        this.f21058c = f21055g;
    }

    public static int b(k2.d dVar, int i2, int i7) {
        int min = Math.min(dVar.getHeight() / i7, dVar.getWidth() / i2);
        int max = Math.max(1, min == 0 ? 0 : Integer.highestOneBit(min));
        if (Log.isLoggable("BufferGifDecoder", 2) && max > 1) {
            StringBuilder p6 = A.i.p(max, i2, "Downsampling GIF, sampleSize: ", ", target dimens: [", "x");
            p6.append(i7);
            p6.append("], actual dimens: [");
            p6.append(dVar.getWidth());
            p6.append("x");
            p6.append(dVar.getHeight());
            p6.append("]");
            Log.v("BufferGifDecoder", p6.toString());
        }
        return max;
    }

    public final C1884f a(ByteBuffer byteBuffer, int i2, int i7, k2.e eVar, q qVar) {
        StringBuilder sb;
        long logTime = G2.m.getLogTime();
        try {
            k2.d parseHeader = eVar.parseHeader();
            if (parseHeader.getNumFrames() > 0 && parseHeader.getStatus() == 0) {
                Bitmap.Config config = qVar.get(m.f21097a) == DecodeFormat.f9186e ? Bitmap.Config.RGB_565 : Bitmap.Config.ARGB_8888;
                int b7 = b(parseHeader, i2, i7);
                J3.b bVar = this.f21059d;
                C1880b c1880b = this.f21060e;
                bVar.getClass();
                k2.f fVar = new k2.f(c1880b, parseHeader, byteBuffer, b7);
                fVar.setDefaultBitmapConfig(config);
                fVar.advance();
                Bitmap nextFrame = fVar.getNextFrame();
                if (nextFrame == null) {
                    if (Log.isLoggable("BufferGifDecoder", 2)) {
                        sb = new StringBuilder("Decoded GIF from stream in ");
                        sb.append(G2.m.getElapsedMillis(logTime));
                        Log.v("BufferGifDecoder", sb.toString());
                        return null;
                    }
                    return null;
                }
                C1884f c1884f = new C1884f(new C1882d(this.f21056a, fVar, C1653e.get(), i2, i7, nextFrame));
                if (Log.isLoggable("BufferGifDecoder", 2)) {
                    Log.v("BufferGifDecoder", "Decoded GIF from stream in " + G2.m.getElapsedMillis(logTime));
                }
                return c1884f;
            }
            if (Log.isLoggable("BufferGifDecoder", 2)) {
                sb = new StringBuilder("Decoded GIF from stream in ");
                sb.append(G2.m.getElapsedMillis(logTime));
                Log.v("BufferGifDecoder", sb.toString());
                return null;
            }
            return null;
        } catch (Throwable th) {
            if (Log.isLoggable("BufferGifDecoder", 2)) {
                Log.v("BufferGifDecoder", "Decoded GIF from stream in " + G2.m.getElapsedMillis(logTime));
            }
            throw th;
        }
    }

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't find top splitter block for handler:B:28:0x003a
        	at jadx.core.utils.BlockUtils.getTopSplitterForHandler(BlockUtils.java:1179)
        	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.collectHandlerRegions(ExcHandlersRegionMaker.java:53)
        	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.process(ExcHandlersRegionMaker.java:38)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:27)
        */
    @Override // l2.r
    public y2.C1884f decode(java.nio.ByteBuffer r9, int r10, int r11, l2.q r12) {
        /*
            r8 = this;
            L0.f r1 = r8.f21058c
            monitor-enter(r1)
            java.lang.Object r0 = r1.f1833a     // Catch: java.lang.Throwable -> L35
            java.util.Queue r0 = (java.util.Queue) r0     // Catch: java.lang.Throwable -> L35
            java.lang.Object r0 = r0.poll()     // Catch: java.lang.Throwable -> L35
            k2.e r0 = (k2.e) r0     // Catch: java.lang.Throwable -> L35
            if (r0 != 0) goto L19
            k2.e r0 = new k2.e     // Catch: java.lang.Throwable -> L15
            r0.<init>()     // Catch: java.lang.Throwable -> L15
            goto L19
        L15:
            r0 = move-exception
            r9 = r0
            r2 = r8
            goto L38
        L19:
            k2.e r6 = r0.setData(r9)     // Catch: java.lang.Throwable -> L35
            monitor-exit(r1)
            r2 = r8
            r3 = r9
            r4 = r10
            r5 = r11
            r7 = r12
            y2.f r9 = r2.a(r3, r4, r5, r6, r7)     // Catch: java.lang.Throwable -> L2d
            L0.f r10 = r2.f21058c
            r10.c(r6)
            return r9
        L2d:
            r0 = move-exception
            r9 = r0
            L0.f r10 = r2.f21058c
            r10.c(r6)
            throw r9
        L35:
            r0 = move-exception
            r2 = r8
        L37:
            r9 = r0
        L38:
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L3a
            throw r9
        L3a:
            r0 = move-exception
            goto L37
        */
        throw new UnsupportedOperationException("Method not decompiled: y2.C1879a.decode(java.nio.ByteBuffer, int, int, l2.q):y2.f");
    }

    @Override // l2.r
    public boolean handles(ByteBuffer byteBuffer, q qVar) throws IOException {
        return !((Boolean) qVar.get(m.f21098b)).booleanValue() && l2.l.getType(this.f21057b, byteBuffer) == ImageHeaderParser$ImageType.GIF;
    }
}
