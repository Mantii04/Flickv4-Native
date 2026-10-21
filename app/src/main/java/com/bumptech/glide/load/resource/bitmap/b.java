package com.bumptech.glide.load.resource.bitmap;

import A.i;
import android.graphics.Bitmap;
import android.media.MediaMetadataRetriever;
import android.os.Build;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import l2.p;
import l2.q;
import l2.r;
import n2.InterfaceC1391M;
import o2.InterfaceC1430d;
import u2.AbstractC1693u;
import u2.C1678e;
import u2.T;
import u2.U;
import u2.V;
import u2.X;
import u2.Y;
import u2.Z;
import u2.a0;

/* loaded from: classes.dex */
public final class b implements r {

    /* renamed from: d, reason: collision with root package name */
    public static final p f9320d = p.disk("com.bumptech.glide.load.resource.bitmap.VideoBitmapDecode.TargetFrame", -1L, new T());

    /* renamed from: e, reason: collision with root package name */
    public static final p f9321e = p.disk("com.bumptech.glide.load.resource.bitmap.VideoBitmapDecode.FrameOption", 2, new U());

    /* renamed from: f, reason: collision with root package name */
    public static final Z f9322f = new Z();

    /* renamed from: g, reason: collision with root package name */
    public static final List f9323g = Collections.unmodifiableList(Arrays.asList("TP1A", "TD1A.220804.031"));

    /* renamed from: a, reason: collision with root package name */
    public final Y f9324a;

    /* renamed from: b, reason: collision with root package name */
    public final InterfaceC1430d f9325b;

    /* renamed from: c, reason: collision with root package name */
    public final Z f9326c = f9322f;

    public b(InterfaceC1430d interfaceC1430d, Y y6) {
        this.f9325b = interfaceC1430d;
        this.f9324a = y6;
    }

    public static r asset(InterfaceC1430d interfaceC1430d) {
        return new b(interfaceC1430d, new V());
    }

    public static r byteBuffer(InterfaceC1430d interfaceC1430d) {
        return new b(interfaceC1430d, new X());
    }

    public static r parcel(InterfaceC1430d interfaceC1430d) {
        return new b(interfaceC1430d, new a0());
    }

    /* JADX WARN: Can't wrap try/catch for region: R(14:0|1|(4:5|6|7|(1:9)(6:10|11|12|(2:14|(1:16)(3:17|18|19))|22|23))|38|(5:45|46|47|(1:53)|51)|(1:59)|60|(3:93|(0)|(1:76)(2:77|78))(4:64|(3:67|(1:69)(1:91)|65)|92|(0)(0))|70|71|72|(3:80|81|(3:83|(1:85)|86))|(0)(0)|(1:(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x006d, code lost:
    
        if (r5 != null) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x017d, code lost:
    
        if (android.util.Log.isLoggable("VideoDecoder", 3) != false) goto L82;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x017f, code lost:
    
        android.util.Log.d("VideoDecoder", "Exception trying to extract HDR transfer function or rotation");
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x010c, code lost:
    
        if (r0 < 33) goto L68;
     */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0186 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0187  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.graphics.Bitmap a(java.lang.Object r14, android.media.MediaMetadataRetriever r15, long r16, int r18, int r19, int r20, u2.AbstractC1693u r21) {
        /*
            Method dump skipped, instructions count: 397
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.resource.bitmap.b.a(java.lang.Object, android.media.MediaMetadataRetriever, long, int, int, int, u2.u):android.graphics.Bitmap");
    }

    @Override // l2.r
    public InterfaceC1391M decode(Object obj, int i2, int i7, q qVar) throws IOException {
        long longValue = ((Long) qVar.get(f9320d)).longValue();
        if (longValue < 0 && longValue != -1) {
            throw new IllegalArgumentException(i.i("Requested frame must be non-negative, or DEFAULT_FRAME, given: ", longValue));
        }
        Integer num = (Integer) qVar.get(f9321e);
        if (num == null) {
            num = 2;
        }
        AbstractC1693u abstractC1693u = (AbstractC1693u) qVar.get(AbstractC1693u.f20302f);
        if (abstractC1693u == null) {
            abstractC1693u = AbstractC1693u.f20301e;
        }
        AbstractC1693u abstractC1693u2 = abstractC1693u;
        MediaMetadataRetriever build = this.f9326c.build();
        try {
            this.f9324a.initializeRetriever(build, obj);
            try {
                Bitmap a7 = a(obj, build, longValue, num.intValue(), i2, i7, abstractC1693u2);
                if (Build.VERSION.SDK_INT >= 29) {
                    build.release();
                } else {
                    build.release();
                }
                return C1678e.obtain(a7, this.f9325b);
            } catch (Throwable th) {
                th = th;
                Throwable th2 = th;
                if (Build.VERSION.SDK_INT >= 29) {
                    build.release();
                    throw th2;
                }
                build.release();
                throw th2;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    @Override // l2.r
    public boolean handles(Object obj, q qVar) {
        return true;
    }
}
