package o2;

import android.graphics.Bitmap;
import android.os.Build;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.NavigableMap;
import java.util.TreeMap;

/* renamed from: o2.u, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1447u implements InterfaceC1442p {

    /* renamed from: d, reason: collision with root package name */
    public static final Bitmap.Config[] f19074d;

    /* renamed from: e, reason: collision with root package name */
    public static final Bitmap.Config[] f19075e;

    /* renamed from: f, reason: collision with root package name */
    public static final Bitmap.Config[] f19076f;

    /* renamed from: g, reason: collision with root package name */
    public static final Bitmap.Config[] f19077g;

    /* renamed from: h, reason: collision with root package name */
    public static final Bitmap.Config[] f19078h;

    /* renamed from: a, reason: collision with root package name */
    public final C1446t f19079a = new C1446t();

    /* renamed from: b, reason: collision with root package name */
    public final C1434h f19080b = new C1434h();

    /* renamed from: c, reason: collision with root package name */
    public final HashMap f19081c = new HashMap();

    static {
        Bitmap.Config config;
        Bitmap.Config[] configArr = {Bitmap.Config.ARGB_8888, null};
        if (Build.VERSION.SDK_INT >= 26) {
            configArr = (Bitmap.Config[]) Arrays.copyOf(configArr, 3);
            int length = configArr.length - 1;
            config = Bitmap.Config.RGBA_F16;
            configArr[length] = config;
        }
        f19074d = configArr;
        f19075e = configArr;
        f19076f = new Bitmap.Config[]{Bitmap.Config.RGB_565};
        f19077g = new Bitmap.Config[]{Bitmap.Config.ARGB_4444};
        f19078h = new Bitmap.Config[]{Bitmap.Config.ALPHA_8};
    }

    public static String b(int i2, Bitmap.Config config) {
        return "[" + i2 + "](" + config + ")";
    }

    public final void a(Integer num, Bitmap bitmap) {
        NavigableMap c7 = c(bitmap.getConfig());
        Integer num2 = (Integer) c7.get(num);
        if (num2 != null) {
            if (num2.intValue() == 1) {
                c7.remove(num);
                return;
            } else {
                c7.put(num, Integer.valueOf(num2.intValue() - 1));
                return;
            }
        }
        throw new NullPointerException("Tried to decrement empty size, size: " + num + ", removed: " + logBitmap(bitmap) + ", this: " + this);
    }

    public final NavigableMap c(Bitmap.Config config) {
        HashMap hashMap = this.f19081c;
        NavigableMap navigableMap = (NavigableMap) hashMap.get(config);
        if (navigableMap != null) {
            return navigableMap;
        }
        TreeMap treeMap = new TreeMap();
        hashMap.put(config, treeMap);
        return treeMap;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x007e A[EDGE_INSN: B:28:0x007e->B:17:0x007e BREAK  A[LOOP:0: B:7:0x0043->B:26:0x007c], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0045  */
    @Override // o2.InterfaceC1442p
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.graphics.Bitmap get(int r12, int r13, android.graphics.Bitmap.Config r14) {
        /*
            r11 = this;
            r0 = 0
            r1 = 1
            int r2 = G2.t.getBitmapByteSize(r12, r13, r14)
            o2.t r3 = r11.f19079a
            o2.s r4 = r3.get(r2, r14)
            int r5 = android.os.Build.VERSION.SDK_INT
            r6 = 26
            if (r5 < r6) goto L1f
            android.graphics.Bitmap$Config r5 = e.P.A()
            boolean r5 = r5.equals(r14)
            if (r5 == 0) goto L1f
            android.graphics.Bitmap$Config[] r5 = o2.C1447u.f19075e
            goto L42
        L1f:
            int[] r5 = o2.AbstractC1444r.f19070a
            int r6 = r14.ordinal()
            r5 = r5[r6]
            if (r5 == r1) goto L40
            r6 = 2
            if (r5 == r6) goto L3d
            r6 = 3
            if (r5 == r6) goto L3a
            r6 = 4
            if (r5 == r6) goto L37
            android.graphics.Bitmap$Config[] r5 = new android.graphics.Bitmap.Config[r1]
            r5[r0] = r14
            goto L42
        L37:
            android.graphics.Bitmap$Config[] r5 = o2.C1447u.f19078h
            goto L42
        L3a:
            android.graphics.Bitmap$Config[] r5 = o2.C1447u.f19077g
            goto L42
        L3d:
            android.graphics.Bitmap$Config[] r5 = o2.C1447u.f19076f
            goto L42
        L40:
            android.graphics.Bitmap$Config[] r5 = o2.C1447u.f19074d
        L42:
            int r6 = r5.length
        L43:
            if (r0 >= r6) goto L7e
            r7 = r5[r0]
            java.util.NavigableMap r8 = r11.c(r7)
            java.lang.Integer r9 = java.lang.Integer.valueOf(r2)
            java.lang.Object r8 = r8.ceilingKey(r9)
            java.lang.Integer r8 = (java.lang.Integer) r8
            if (r8 == 0) goto L7c
            int r9 = r8.intValue()
            int r10 = r2 * 8
            if (r9 > r10) goto L7c
            int r0 = r8.intValue()
            if (r0 != r2) goto L70
            if (r7 != 0) goto L6a
            if (r14 == 0) goto L7e
            goto L70
        L6a:
            boolean r0 = r7.equals(r14)
            if (r0 != 0) goto L7e
        L70:
            r3.offer(r4)
            int r0 = r8.intValue()
            o2.s r4 = r3.get(r0, r7)
            goto L7e
        L7c:
            int r0 = r0 + r1
            goto L43
        L7e:
            o2.h r0 = r11.f19080b
            java.lang.Object r0 = r0.get(r4)
            android.graphics.Bitmap r0 = (android.graphics.Bitmap) r0
            if (r0 == 0) goto L94
            int r1 = r4.f19072b
            java.lang.Integer r1 = java.lang.Integer.valueOf(r1)
            r11.a(r1, r0)
            r0.reconfigure(r12, r13, r14)
        L94:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: o2.C1447u.get(int, int, android.graphics.Bitmap$Config):android.graphics.Bitmap");
    }

    @Override // o2.InterfaceC1442p
    public int getSize(Bitmap bitmap) {
        return G2.t.getBitmapByteSize(bitmap);
    }

    @Override // o2.InterfaceC1442p
    public String logBitmap(Bitmap bitmap) {
        return b(G2.t.getBitmapByteSize(bitmap), bitmap.getConfig());
    }

    public void put(Bitmap bitmap) {
        C1445s c1445s = this.f19079a.get(G2.t.getBitmapByteSize(bitmap), bitmap.getConfig());
        this.f19080b.put(c1445s, bitmap);
        NavigableMap c7 = c(bitmap.getConfig());
        Integer num = (Integer) c7.get(Integer.valueOf(c1445s.f19072b));
        c7.put(Integer.valueOf(c1445s.f19072b), Integer.valueOf(num != null ? 1 + num.intValue() : 1));
    }

    @Override // o2.InterfaceC1442p
    public Bitmap removeLast() {
        Bitmap bitmap = (Bitmap) this.f19080b.removeLast();
        if (bitmap != null) {
            a(Integer.valueOf(G2.t.getBitmapByteSize(bitmap)), bitmap);
        }
        return bitmap;
    }

    public String toString() {
        StringBuilder o6 = b.c.o("SizeConfigStrategy{groupedMap=");
        o6.append(this.f19080b);
        o6.append(", sortedSizes=(");
        HashMap hashMap = this.f19081c;
        for (Map.Entry entry : hashMap.entrySet()) {
            o6.append(entry.getKey());
            o6.append('[');
            o6.append(entry.getValue());
            o6.append("], ");
        }
        if (!hashMap.isEmpty()) {
            o6.replace(o6.length() - 2, o6.length(), "");
        }
        o6.append(")}");
        return o6.toString();
    }

    @Override // o2.InterfaceC1442p
    public String logBitmap(int i2, int i7, Bitmap.Config config) {
        return b(G2.t.getBitmapByteSize(i2, i7, config), config);
    }
}
