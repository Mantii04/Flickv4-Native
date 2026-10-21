package androidx.datastore.preferences.protobuf;

import java.lang.reflect.Field;
import java.nio.Buffer;
import java.security.AccessController;
import java.util.logging.Logger;
import sun.misc.Unsafe;

/* loaded from: classes.dex */
public abstract class H0 {

    /* renamed from: a, reason: collision with root package name */
    public static final Logger f5769a = Logger.getLogger(H0.class.getName());

    /* renamed from: b, reason: collision with root package name */
    public static final Unsafe f5770b;

    /* renamed from: c, reason: collision with root package name */
    public static final Class f5771c;

    /* renamed from: d, reason: collision with root package name */
    public static final G0 f5772d;

    /* renamed from: e, reason: collision with root package name */
    public static final boolean f5773e;

    /* renamed from: f, reason: collision with root package name */
    public static final boolean f5774f;

    /* renamed from: g, reason: collision with root package name */
    public static final long f5775g;

    /* renamed from: h, reason: collision with root package name */
    public static final boolean f5776h;

    /* JADX WARN: Removed duplicated region for block: B:15:0x010c  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0256  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0266  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0269  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0112 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    static {
        /*
            Method dump skipped, instructions count: 622
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.preferences.protobuf.H0.<clinit>():void");
    }

    public static Object a(Class cls) {
        try {
            return f5770b.allocateInstance(cls);
        } catch (InstantiationException e3) {
            throw new IllegalStateException(e3);
        }
    }

    public static int b(Class cls) {
        if (f5774f) {
            return f5772d.arrayBaseOffset(cls);
        }
        return -1;
    }

    public static void c(Class cls) {
        if (f5774f) {
            f5772d.arrayIndexScale(cls);
        }
    }

    public static Field d() {
        Field field;
        Field field2;
        if (AbstractC0413e.a()) {
            try {
                field2 = Buffer.class.getDeclaredField("effectiveDirectAddress");
            } catch (Throwable unused) {
                field2 = null;
            }
            if (field2 != null) {
                return field2;
            }
        }
        try {
            field = Buffer.class.getDeclaredField("address");
        } catch (Throwable unused2) {
            field = null;
        }
        if (field == null || field.getType() != Long.TYPE) {
            return null;
        }
        return field;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static boolean e(Class cls) {
        if (!AbstractC0413e.a()) {
            return false;
        }
        try {
            Class cls2 = f5771c;
            Class cls3 = Boolean.TYPE;
            cls2.getMethod("peekLong", cls, cls3);
            cls2.getMethod("pokeLong", cls, Long.TYPE, cls3);
            Class cls4 = Integer.TYPE;
            cls2.getMethod("pokeInt", cls, cls4, cls3);
            cls2.getMethod("peekInt", cls, cls3);
            cls2.getMethod("pokeByte", cls, Byte.TYPE);
            cls2.getMethod("peekByte", cls);
            cls2.getMethod("pokeByteArray", cls, byte[].class, cls4, cls4);
            cls2.getMethod("peekByteArray", cls, byte[].class, cls4, cls4);
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    public static byte f(long j7, byte[] bArr) {
        return f5772d.getByte(bArr, f5775g + j7);
    }

    public static byte g(long j7, Object obj) {
        return (byte) ((f5772d.getInt(obj, (-4) & j7) >>> ((int) (((~j7) & 3) << 3))) & 255);
    }

    public static byte h(long j7, Object obj) {
        return (byte) ((f5772d.getInt(obj, (-4) & j7) >>> ((int) ((j7 & 3) << 3))) & 255);
    }

    public static Unsafe i() {
        try {
            return (Unsafe) AccessController.doPrivileged(new C0());
        } catch (Throwable unused) {
            return null;
        }
    }

    public static void j(byte[] bArr, long j7, byte b7) {
        f5772d.putByte(bArr, f5775g + j7, b7);
    }

    public static void k(Object obj, long j7, byte b7) {
        long j8 = (-4) & j7;
        int i2 = f5772d.getInt(obj, j8);
        int i7 = ((~((int) j7)) & 3) << 3;
        m(obj, j8, ((255 & b7) << i7) | (i2 & (~(255 << i7))));
    }

    public static void l(Object obj, long j7, byte b7) {
        long j8 = (-4) & j7;
        int i2 = (((int) j7) & 3) << 3;
        m(obj, j8, ((255 & b7) << i2) | (f5772d.getInt(obj, j8) & (~(255 << i2))));
    }

    public static void m(Object obj, long j7, int i2) {
        f5772d.putInt(obj, j7, i2);
    }

    public static void n(Object obj, long j7, long j8) {
        f5772d.putLong(obj, j7, j8);
    }

    public static void o(Object obj, long j7, Object obj2) {
        f5772d.putObject(obj, j7, obj2);
    }
}
