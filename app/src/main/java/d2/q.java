package d2;

import T1.C0330i;
import android.graphics.PointF;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import androidx.media3.exoplayer.upstream.CmcdData;
import e2.C0853a;
import g2.C0947a;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public abstract class q {

    /* renamed from: b, reason: collision with root package name */
    public static p.r f13564b;

    /* renamed from: a, reason: collision with root package name */
    public static final LinearInterpolator f13563a = new LinearInterpolator();

    /* renamed from: c, reason: collision with root package name */
    public static final C0853a f13565c = C0853a.of("t", CmcdData.STREAMING_FORMAT_SS, "e", "o", CmcdData.OBJECT_TYPE_INIT_SEGMENT, CmcdData.STREAMING_FORMAT_HLS, "to", "ti");

    public static C0947a a(com.airbnb.lottie.parser.moshi.a aVar, C0330i c0330i, float f3, InterfaceC0791H interfaceC0791H, boolean z6) {
        Interpolator interpolator;
        Interpolator interpolator2;
        WeakReference weakReference;
        if (!z6) {
            return new C0947a(interfaceC0791H.parse(aVar, f3));
        }
        aVar.beginObject();
        PointF pointF = null;
        PointF pointF2 = null;
        Object obj = null;
        Object obj2 = null;
        PointF pointF3 = null;
        PointF pointF4 = null;
        float f7 = 0.0f;
        while (true) {
            boolean z7 = false;
            while (aVar.hasNext()) {
                switch (aVar.selectName(f13565c)) {
                    case 0:
                        f7 = (float) aVar.nextDouble();
                        break;
                    case 1:
                        obj2 = interfaceC0791H.parse(aVar, f3);
                        break;
                    case 2:
                        obj = interfaceC0791H.parse(aVar, f3);
                        break;
                    case 3:
                        pointF = p.b(aVar, f3);
                        break;
                    case 4:
                        pointF2 = p.b(aVar, f3);
                        break;
                    case 5:
                        if (aVar.nextInt() == 1) {
                            z7 = true;
                            break;
                        }
                        break;
                    case 6:
                        pointF4 = p.b(aVar, f3);
                        break;
                    case 7:
                        pointF3 = p.b(aVar, f3);
                        break;
                    default:
                        aVar.skipValue();
                        break;
                }
            }
            aVar.endObject();
            if (z7) {
                interpolator2 = f13563a;
                obj = obj2;
            } else {
                if (pointF == null || pointF2 == null) {
                    interpolator = f13563a;
                } else {
                    float f8 = -f3;
                    pointF.x = f2.g.clamp(pointF.x, f8, f3);
                    pointF.y = f2.g.clamp(pointF.y, -100.0f, 100.0f);
                    pointF2.x = f2.g.clamp(pointF2.x, f8, f3);
                    float clamp = f2.g.clamp(pointF2.y, -100.0f, 100.0f);
                    pointF2.y = clamp;
                    int hashFor = f2.h.hashFor(pointF.x, pointF.y, pointF2.x, clamp);
                    synchronized (q.class) {
                        if (f13564b == null) {
                            f13564b = new p.r();
                        }
                        weakReference = (WeakReference) f13564b.get(hashFor);
                    }
                    Interpolator interpolator3 = weakReference != null ? (Interpolator) weakReference.get() : null;
                    if (weakReference == null || interpolator3 == null) {
                        pointF.x /= f3;
                        pointF.y /= f3;
                        float f9 = pointF2.x / f3;
                        pointF2.x = f9;
                        float f10 = pointF2.y / f3;
                        pointF2.y = f10;
                        try {
                            interpolator = O.b.create(pointF.x, pointF.y, f9, f10);
                        } catch (IllegalArgumentException e3) {
                            interpolator = e3.getMessage().equals("The Path cannot loop back on itself.") ? O.b.create(Math.min(pointF.x, 1.0f), pointF.y, Math.max(pointF2.x, 0.0f), pointF2.y) : new LinearInterpolator();
                        }
                        try {
                            b(hashFor, new WeakReference(interpolator));
                        } catch (ArrayIndexOutOfBoundsException unused) {
                        }
                    } else {
                        interpolator = interpolator3;
                    }
                }
                interpolator2 = interpolator;
            }
            C0947a c0947a = new C0947a(c0330i, obj2, obj, interpolator2, f7, null);
            c0947a.f16452m = pointF4;
            c0947a.f16453n = pointF3;
            return c0947a;
        }
    }

    public static void b(int i2, WeakReference weakReference) {
        synchronized (q.class) {
            f13564b.put(i2, weakReference);
        }
    }
}
