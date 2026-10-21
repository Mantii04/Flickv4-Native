package V3;

import androidx.media3.exoplayer.upstream.CmcdData;
import java.security.AccessController;
import java.security.PrivilegedActionException;
import sun.misc.Unsafe;

/* renamed from: V3.l, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0351l extends com.bumptech.glide.f {

    /* renamed from: b, reason: collision with root package name */
    public static final Unsafe f4001b;

    /* renamed from: c, reason: collision with root package name */
    public static final long f4002c;

    /* renamed from: d, reason: collision with root package name */
    public static final long f4003d;

    /* renamed from: e, reason: collision with root package name */
    public static final long f4004e;

    /* renamed from: f, reason: collision with root package name */
    public static final long f4005f;

    /* renamed from: g, reason: collision with root package name */
    public static final long f4006g;

    static {
        Unsafe unsafe;
        try {
            try {
                unsafe = Unsafe.getUnsafe();
            } catch (PrivilegedActionException e3) {
                throw new RuntimeException("Could not initialize intrinsics", e3.getCause());
            }
        } catch (SecurityException unused) {
            unsafe = (Unsafe) AccessController.doPrivileged(new C0350k());
        }
        try {
            f4003d = unsafe.objectFieldOffset(com.google.common.util.concurrent.b.class.getDeclaredField("f"));
            f4002c = unsafe.objectFieldOffset(com.google.common.util.concurrent.b.class.getDeclaredField("e"));
            f4004e = unsafe.objectFieldOffset(com.google.common.util.concurrent.b.class.getDeclaredField("b"));
            f4005f = unsafe.objectFieldOffset(C0352m.class.getDeclaredField(CmcdData.OBJECT_TYPE_AUDIO_ONLY));
            f4006g = unsafe.objectFieldOffset(C0352m.class.getDeclaredField("b"));
            f4001b = unsafe;
        } catch (NoSuchFieldException e7) {
            throw new RuntimeException(e7);
        }
    }

    @Override // com.bumptech.glide.f
    public final boolean a(com.google.common.util.concurrent.b bVar, C0341b c0341b, C0341b c0341b2) {
        return AbstractC0348i.a(f4001b, bVar, f4002c, c0341b, c0341b2);
    }

    @Override // com.bumptech.glide.f
    public final boolean b(com.google.common.util.concurrent.b bVar, Object obj, Object obj2) {
        return AbstractC0349j.a(f4001b, bVar, f4004e, obj, obj2);
    }

    @Override // com.bumptech.glide.f
    public final boolean c(com.google.common.util.concurrent.b bVar, C0352m c0352m, C0352m c0352m2) {
        return AbstractC0347h.a(f4001b, bVar, f4003d, c0352m, c0352m2);
    }

    @Override // com.bumptech.glide.f
    public final C0341b d(com.google.common.util.concurrent.b bVar) {
        C0341b c0341b;
        C0341b c0341b2 = C0341b.f3990d;
        do {
            c0341b = bVar.f13207e;
            if (c0341b2 == c0341b) {
                break;
            }
        } while (!a(bVar, c0341b, c0341b2));
        return c0341b;
    }

    @Override // com.bumptech.glide.f
    public final C0352m e(com.google.common.util.concurrent.b bVar) {
        C0352m c0352m;
        C0352m c0352m2 = C0352m.f4007c;
        do {
            c0352m = bVar.f13208f;
            if (c0352m2 == c0352m) {
                break;
            }
        } while (!c(bVar, c0352m, c0352m2));
        return c0352m;
    }

    @Override // com.bumptech.glide.f
    public final void h(C0352m c0352m, C0352m c0352m2) {
        f4001b.putObject(c0352m, f4006g, c0352m2);
    }

    @Override // com.bumptech.glide.f
    public final void i(C0352m c0352m, Thread thread) {
        f4001b.putObject(c0352m, f4005f, thread);
    }
}
