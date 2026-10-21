package V3;

import android.util.Log;
import android.util.LongSparseArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import d0.C0777b;
import e.j0;
import java.io.IOException;
import java.lang.reflect.Field;
import java.nio.ByteBuffer;

/* loaded from: classes2.dex */
public abstract class s {

    /* renamed from: a, reason: collision with root package name */
    public static Field f4011a;

    /* renamed from: b, reason: collision with root package name */
    public static boolean f4012b;

    /* renamed from: c, reason: collision with root package name */
    public static Class f4013c;

    /* renamed from: d, reason: collision with root package name */
    public static boolean f4014d;

    /* renamed from: e, reason: collision with root package name */
    public static Field f4015e;

    /* renamed from: f, reason: collision with root package name */
    public static boolean f4016f;

    /* renamed from: g, reason: collision with root package name */
    public static Field f4017g;

    /* renamed from: h, reason: collision with root package name */
    public static boolean f4018h;

    public static Object c(int i2) {
        if (i2 < 2 || i2 > 1073741824 || Integer.highestOneBit(i2) != i2) {
            throw new IllegalArgumentException(A.i.f(i2, "must be power of 2 between 2^1 and 2^30: "));
        }
        return i2 <= 256 ? new byte[i2] : i2 <= 65536 ? new short[i2] : new int[i2];
    }

    public static void d(Object obj) {
        LongSparseArray longSparseArray;
        if (!f4014d) {
            try {
                f4013c = Class.forName("android.content.res.ThemedResourceCache");
            } catch (ClassNotFoundException e3) {
                Log.e("ResourcesFlusher", "Could not find ThemedResourceCache class", e3);
            }
            f4014d = true;
        }
        Class cls = f4013c;
        if (cls == null) {
            return;
        }
        if (!f4016f) {
            try {
                Field declaredField = cls.getDeclaredField("mUnthemedEntries");
                f4015e = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException e7) {
                Log.e("ResourcesFlusher", "Could not retrieve ThemedResourceCache#mUnthemedEntries field", e7);
            }
            f4016f = true;
        }
        Field field = f4015e;
        if (field == null) {
            return;
        }
        try {
            longSparseArray = (LongSparseArray) field.get(obj);
        } catch (IllegalAccessException e8) {
            Log.e("ResourcesFlusher", "Could not retrieve value from ThemedResourceCache#mUnthemedEntries", e8);
            longSparseArray = null;
        }
        if (longSparseArray != null) {
            j0.a(longSparseArray);
        }
    }

    public static int o(int i2, int i7, int i8) {
        return (i2 & (~i8)) | (i7 & i8);
    }

    public static C0777b p(ByteBuffer byteBuffer) {
        long j7;
        ByteBuffer duplicate = byteBuffer.duplicate();
        androidx.emoji2.text.A a7 = new androidx.emoji2.text.A(duplicate);
        a7.skip(4);
        int readUnsignedShort = a7.readUnsignedShort();
        if (readUnsignedShort > 100) {
            throw new IOException("Cannot read metadata.");
        }
        a7.skip(6);
        int i2 = 0;
        while (true) {
            if (i2 >= readUnsignedShort) {
                j7 = -1;
                break;
            }
            int readTag = a7.readTag();
            a7.skip(4);
            j7 = a7.readUnsignedInt();
            a7.skip(4);
            if (1835365473 == readTag) {
                break;
            }
            i2++;
        }
        if (j7 != -1) {
            a7.skip((int) (j7 - a7.getPosition()));
            a7.skip(12);
            long readUnsignedInt = a7.readUnsignedInt();
            for (int i7 = 0; i7 < readUnsignedInt; i7++) {
                int readTag2 = a7.readTag();
                long readUnsignedInt2 = a7.readUnsignedInt();
                a7.readUnsignedInt();
                if (1164798569 == readTag2 || 1701669481 == readTag2) {
                    duplicate.position((int) (readUnsignedInt2 + j7));
                    return C0777b.getRootAsMetadataList(duplicate);
                }
            }
        }
        throw new IOException("Cannot read metadata.");
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x002b, code lost:
    
        r9 = r6 & r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x002d, code lost:
    
        if (r5 != (-1)) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x002f, code lost:
    
        t(r12, r1, r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0032, code lost:
    
        return r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0033, code lost:
    
        r13[r5] = o(r13[r5], r9, r11);
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x003b, code lost:
    
        return r2;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int q(java.lang.Object r9, java.lang.Object r10, int r11, java.lang.Object r12, int[] r13, java.lang.Object[] r14, java.lang.Object[] r15) {
        /*
            int r0 = a.AbstractC0373c.e(r9)
            r1 = r0 & r11
            int r2 = s(r1, r12)
            r3 = -1
            if (r2 != 0) goto Le
            goto L40
        Le:
            int r4 = ~r11
            r0 = r0 & r4
            r5 = r3
        L11:
            int r2 = r2 + (-1)
            r6 = r13[r2]
            r7 = r6 & r4
            if (r7 != r0) goto L3c
            r7 = r14[r2]
            boolean r7 = P3.u.equal(r9, r7)
            if (r7 == 0) goto L3c
            if (r15 == 0) goto L2b
            r7 = r15[r2]
            boolean r7 = P3.u.equal(r10, r7)
            if (r7 == 0) goto L3c
        L2b:
            r9 = r6 & r11
            if (r5 != r3) goto L33
            t(r12, r1, r9)
            return r2
        L33:
            r10 = r13[r5]
            int r9 = o(r10, r9, r11)
            r13[r5] = r9
            return r2
        L3c:
            r5 = r6 & r11
            if (r5 != 0) goto L41
        L40:
            return r3
        L41:
            r8 = r5
            r5 = r2
            r2 = r8
            goto L11
        */
        throw new UnsupportedOperationException("Method not decompiled: V3.s.q(java.lang.Object, java.lang.Object, int, java.lang.Object, int[], java.lang.Object[], java.lang.Object[]):int");
    }

    public static int s(int i2, Object obj) {
        return obj instanceof byte[] ? ((byte[]) obj)[i2] & 255 : obj instanceof short[] ? ((short[]) obj)[i2] & 65535 : ((int[]) obj)[i2];
    }

    public static void t(Object obj, int i2, int i7) {
        if (obj instanceof byte[]) {
            ((byte[]) obj)[i2] = (byte) i7;
        } else if (obj instanceof short[]) {
            ((short[]) obj)[i2] = (short) i7;
        } else {
            ((int[]) obj)[i2] = i7;
        }
    }

    public abstract int a(ViewGroup.MarginLayoutParams marginLayoutParams);

    public abstract float b(int i2);

    public abstract int e(ViewGroup.MarginLayoutParams marginLayoutParams);

    public abstract int f();

    public abstract int g();

    public abstract int getParentInnerEdge(CoordinatorLayout coordinatorLayout);

    public abstract int h();

    public abstract int i();

    public abstract int j(View view);

    public abstract int k();

    public abstract boolean l(float f3);

    public abstract boolean m(View view);

    public abstract boolean n(float f3, float f7);

    public abstract boolean r(View view, float f3);

    public abstract void u(ViewGroup.MarginLayoutParams marginLayoutParams, int i2);

    public abstract void v(ViewGroup.MarginLayoutParams marginLayoutParams, int i2, int i7);
}
