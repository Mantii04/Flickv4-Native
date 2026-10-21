package androidx.datastore.preferences.protobuf;

import androidx.media3.exoplayer.DefaultRenderersFactory;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import cz.msebera.android.httpclient.impl.client.cache.CacheConfig;
import cz.msebera.android.httpclient.util.LangUtils;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import sun.misc.Unsafe;

/* renamed from: androidx.datastore.preferences.protobuf.b0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0408b0 implements InterfaceC0428l0 {

    /* renamed from: o, reason: collision with root package name */
    public static final int[] f5837o = new int[0];

    /* renamed from: p, reason: collision with root package name */
    public static final Unsafe f5838p = H0.i();

    /* renamed from: a, reason: collision with root package name */
    public final int[] f5839a;

    /* renamed from: b, reason: collision with root package name */
    public final Object[] f5840b;

    /* renamed from: c, reason: collision with root package name */
    public final int f5841c;

    /* renamed from: d, reason: collision with root package name */
    public final int f5842d;

    /* renamed from: e, reason: collision with root package name */
    public final InterfaceC0406a0 f5843e;

    /* renamed from: f, reason: collision with root package name */
    public final boolean f5844f;

    /* renamed from: g, reason: collision with root package name */
    public final boolean f5845g;

    /* renamed from: h, reason: collision with root package name */
    public final int[] f5846h;

    /* renamed from: i, reason: collision with root package name */
    public final int f5847i;

    /* renamed from: j, reason: collision with root package name */
    public final int f5848j;

    /* renamed from: k, reason: collision with root package name */
    public final C0412d0 f5849k;

    /* renamed from: l, reason: collision with root package name */
    public final N f5850l;

    /* renamed from: m, reason: collision with root package name */
    public final w0 f5851m;

    /* renamed from: n, reason: collision with root package name */
    public final V f5852n;

    public C0408b0(int[] iArr, Object[] objArr, int i2, int i7, InterfaceC0406a0 interfaceC0406a0, boolean z6, int[] iArr2, int i8, int i9, C0412d0 c0412d0, N n7, w0 w0Var, C0439x c0439x, V v6) {
        this.f5839a = iArr;
        this.f5840b = objArr;
        this.f5841c = i2;
        this.f5842d = i7;
        this.f5844f = interfaceC0406a0 instanceof F;
        this.f5845g = z6;
        this.f5846h = iArr2;
        this.f5847i = i8;
        this.f5848j = i9;
        this.f5849k = c0412d0;
        this.f5850l = n7;
        this.f5851m = w0Var;
        this.f5843e = interfaceC0406a0;
        this.f5852n = v6;
    }

    public static int A(int i2) {
        return (i2 & 267386880) >>> 20;
    }

    public static void E(int i2, Object obj, C0435t c0435t) {
        if (obj instanceof String) {
            c0435t.writeString(i2, (String) obj);
        } else {
            c0435t.writeBytes(i2, (ByteString) obj);
        }
    }

    public static List j(long j7, Object obj) {
        return (List) H0.f5772d.getObject(obj, j7);
    }

    /* JADX WARN: Removed duplicated region for block: B:65:0x0291  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x02ae  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x02b1  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0298  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static androidx.datastore.preferences.protobuf.C0408b0 o(androidx.datastore.preferences.protobuf.C0424j0 r33, androidx.datastore.preferences.protobuf.C0412d0 r34, androidx.datastore.preferences.protobuf.N r35, androidx.datastore.preferences.protobuf.w0 r36, androidx.datastore.preferences.protobuf.C0439x r37, androidx.datastore.preferences.protobuf.V r38) {
        /*
            Method dump skipped, instructions count: 1044
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.preferences.protobuf.C0408b0.o(androidx.datastore.preferences.protobuf.j0, androidx.datastore.preferences.protobuf.d0, androidx.datastore.preferences.protobuf.N, androidx.datastore.preferences.protobuf.w0, androidx.datastore.preferences.protobuf.x, androidx.datastore.preferences.protobuf.V):androidx.datastore.preferences.protobuf.b0");
    }

    public static long p(int i2) {
        return i2 & 1048575;
    }

    public static int q(long j7, Object obj) {
        return ((Integer) H0.f5772d.getObject(obj, j7)).intValue();
    }

    public static long r(long j7, Object obj) {
        return ((Long) H0.f5772d.getObject(obj, j7)).longValue();
    }

    public static Field x(Class cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException unused) {
            Field[] declaredFields = cls.getDeclaredFields();
            for (Field field : declaredFields) {
                if (str.equals(field.getName())) {
                    return field;
                }
            }
            StringBuilder t6 = A.i.t("Field ", str, " for ");
            t6.append(cls.getName());
            t6.append(" not found. Known fields are ");
            t6.append(Arrays.toString(declaredFields));
            throw new RuntimeException(t6.toString());
        }
    }

    public final int B(int i2) {
        return this.f5839a[i2 + 1];
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public final void C(Object obj, C0435t c0435t) {
        int i2;
        int i7;
        boolean z6;
        int[] iArr = this.f5839a;
        int length = iArr.length;
        Unsafe unsafe = f5838p;
        int i8 = -1;
        int i9 = 0;
        for (int i10 = 0; i10 < length; i10 += 3) {
            int B6 = B(i10);
            int i11 = iArr[i10];
            int A6 = A(B6);
            if (this.f5845g || A6 > 17) {
                i2 = 1048575;
                i7 = 0;
            } else {
                int i12 = iArr[i10 + 2];
                i2 = 1048575;
                int i13 = i12 & 1048575;
                if (i13 != i8) {
                    i9 = unsafe.getInt(obj, i13);
                    i8 = i13;
                }
                i7 = 1 << (i12 >>> 20);
            }
            long j7 = B6 & i2;
            switch (A6) {
                case 0:
                    if ((i7 & i9) != 0) {
                        c0435t.writeDouble(i11, H0.f5772d.getDouble(obj, j7));
                        break;
                    } else {
                        break;
                    }
                case 1:
                    if ((i7 & i9) != 0) {
                        c0435t.writeFloat(i11, H0.f5772d.getFloat(obj, j7));
                        break;
                    } else {
                        break;
                    }
                case 2:
                    if ((i7 & i9) != 0) {
                        c0435t.writeInt64(i11, unsafe.getLong(obj, j7));
                        break;
                    } else {
                        break;
                    }
                case 3:
                    if ((i7 & i9) != 0) {
                        c0435t.writeUInt64(i11, unsafe.getLong(obj, j7));
                        break;
                    } else {
                        break;
                    }
                case 4:
                    if ((i7 & i9) != 0) {
                        c0435t.writeInt32(i11, unsafe.getInt(obj, j7));
                        break;
                    } else {
                        break;
                    }
                case 5:
                    if ((i7 & i9) != 0) {
                        c0435t.writeFixed64(i11, unsafe.getLong(obj, j7));
                        break;
                    } else {
                        break;
                    }
                case 6:
                    if ((i7 & i9) != 0) {
                        c0435t.writeFixed32(i11, unsafe.getInt(obj, j7));
                        break;
                    } else {
                        break;
                    }
                case 7:
                    if ((i7 & i9) != 0) {
                        c0435t.writeBool(i11, H0.f5772d.getBoolean(obj, j7));
                        break;
                    } else {
                        break;
                    }
                case 8:
                    if ((i7 & i9) != 0) {
                        E(i11, unsafe.getObject(obj, j7), c0435t);
                        break;
                    } else {
                        break;
                    }
                case 9:
                    if ((i7 & i9) != 0) {
                        c0435t.writeMessage(i11, unsafe.getObject(obj, j7), e(i10));
                        break;
                    } else {
                        break;
                    }
                case 10:
                    if ((i7 & i9) != 0) {
                        c0435t.writeBytes(i11, (ByteString) unsafe.getObject(obj, j7));
                        break;
                    } else {
                        break;
                    }
                case 11:
                    if ((i7 & i9) != 0) {
                        c0435t.writeUInt32(i11, unsafe.getInt(obj, j7));
                        break;
                    } else {
                        break;
                    }
                case 12:
                    if ((i7 & i9) != 0) {
                        c0435t.writeEnum(i11, unsafe.getInt(obj, j7));
                        break;
                    } else {
                        break;
                    }
                case 13:
                    if ((i7 & i9) != 0) {
                        c0435t.writeSFixed32(i11, unsafe.getInt(obj, j7));
                        break;
                    } else {
                        break;
                    }
                case 14:
                    if ((i7 & i9) != 0) {
                        c0435t.writeSFixed64(i11, unsafe.getLong(obj, j7));
                        break;
                    } else {
                        break;
                    }
                case 15:
                    if ((i7 & i9) != 0) {
                        c0435t.writeSInt32(i11, unsafe.getInt(obj, j7));
                        break;
                    } else {
                        break;
                    }
                case 16:
                    if ((i7 & i9) != 0) {
                        c0435t.writeSInt64(i11, unsafe.getLong(obj, j7));
                        break;
                    } else {
                        break;
                    }
                case 17:
                    if ((i7 & i9) != 0) {
                        c0435t.writeGroup(i11, unsafe.getObject(obj, j7), e(i10));
                        break;
                    } else {
                        break;
                    }
                case 18:
                    n0.writeDoubleList(iArr[i10], (List) unsafe.getObject(obj, j7), c0435t, false);
                    break;
                case 19:
                    n0.writeFloatList(iArr[i10], (List) unsafe.getObject(obj, j7), c0435t, false);
                    break;
                case 20:
                    n0.writeInt64List(iArr[i10], (List) unsafe.getObject(obj, j7), c0435t, false);
                    break;
                case 21:
                    n0.writeUInt64List(iArr[i10], (List) unsafe.getObject(obj, j7), c0435t, false);
                    break;
                case 22:
                    n0.writeInt32List(iArr[i10], (List) unsafe.getObject(obj, j7), c0435t, false);
                    break;
                case 23:
                    n0.writeFixed64List(iArr[i10], (List) unsafe.getObject(obj, j7), c0435t, false);
                    break;
                case 24:
                    n0.writeFixed32List(iArr[i10], (List) unsafe.getObject(obj, j7), c0435t, false);
                    break;
                case 25:
                    n0.writeBoolList(iArr[i10], (List) unsafe.getObject(obj, j7), c0435t, false);
                    break;
                case 26:
                    n0.writeStringList(iArr[i10], (List) unsafe.getObject(obj, j7), c0435t);
                    break;
                case 27:
                    n0.writeMessageList(iArr[i10], (List) unsafe.getObject(obj, j7), c0435t, e(i10));
                    break;
                case 28:
                    n0.writeBytesList(iArr[i10], (List) unsafe.getObject(obj, j7), c0435t);
                    break;
                case 29:
                    z6 = false;
                    n0.writeUInt32List(iArr[i10], (List) unsafe.getObject(obj, j7), c0435t, false);
                    break;
                case 30:
                    z6 = false;
                    n0.writeEnumList(iArr[i10], (List) unsafe.getObject(obj, j7), c0435t, false);
                    break;
                case 31:
                    z6 = false;
                    n0.writeSFixed32List(iArr[i10], (List) unsafe.getObject(obj, j7), c0435t, false);
                    break;
                case 32:
                    z6 = false;
                    n0.writeSFixed64List(iArr[i10], (List) unsafe.getObject(obj, j7), c0435t, false);
                    break;
                case 33:
                    z6 = false;
                    n0.writeSInt32List(iArr[i10], (List) unsafe.getObject(obj, j7), c0435t, false);
                    break;
                case 34:
                    z6 = false;
                    n0.writeSInt64List(iArr[i10], (List) unsafe.getObject(obj, j7), c0435t, false);
                    break;
                case 35:
                    n0.writeDoubleList(iArr[i10], (List) unsafe.getObject(obj, j7), c0435t, true);
                    break;
                case 36:
                    n0.writeFloatList(iArr[i10], (List) unsafe.getObject(obj, j7), c0435t, true);
                    break;
                case LangUtils.HASH_OFFSET /* 37 */:
                    n0.writeInt64List(iArr[i10], (List) unsafe.getObject(obj, j7), c0435t, true);
                    break;
                case 38:
                    n0.writeUInt64List(iArr[i10], (List) unsafe.getObject(obj, j7), c0435t, true);
                    break;
                case 39:
                    n0.writeInt32List(iArr[i10], (List) unsafe.getObject(obj, j7), c0435t, true);
                    break;
                case 40:
                    n0.writeFixed64List(iArr[i10], (List) unsafe.getObject(obj, j7), c0435t, true);
                    break;
                case 41:
                    n0.writeFixed32List(iArr[i10], (List) unsafe.getObject(obj, j7), c0435t, true);
                    break;
                case 42:
                    n0.writeBoolList(iArr[i10], (List) unsafe.getObject(obj, j7), c0435t, true);
                    break;
                case 43:
                    n0.writeUInt32List(iArr[i10], (List) unsafe.getObject(obj, j7), c0435t, true);
                    break;
                case 44:
                    n0.writeEnumList(iArr[i10], (List) unsafe.getObject(obj, j7), c0435t, true);
                    break;
                case 45:
                    n0.writeSFixed32List(iArr[i10], (List) unsafe.getObject(obj, j7), c0435t, true);
                    break;
                case 46:
                    n0.writeSFixed64List(iArr[i10], (List) unsafe.getObject(obj, j7), c0435t, true);
                    break;
                case 47:
                    n0.writeSInt32List(iArr[i10], (List) unsafe.getObject(obj, j7), c0435t, true);
                    break;
                case 48:
                    n0.writeSInt64List(iArr[i10], (List) unsafe.getObject(obj, j7), c0435t, true);
                    break;
                case 49:
                    n0.writeGroupList(iArr[i10], (List) unsafe.getObject(obj, j7), c0435t, e(i10));
                    break;
                case DefaultRenderersFactory.MAX_DROPPED_VIDEO_FRAME_COUNT_TO_NOTIFY /* 50 */:
                    D(c0435t, i11, unsafe.getObject(obj, j7), i10);
                    break;
                case 51:
                    if (i(obj, i11, i10)) {
                        c0435t.writeDouble(i11, ((Double) H0.f5772d.getObject(obj, j7)).doubleValue());
                    }
                    break;
                case 52:
                    if (i(obj, i11, i10)) {
                        c0435t.writeFloat(i11, ((Float) H0.f5772d.getObject(obj, j7)).floatValue());
                    }
                    break;
                case 53:
                    if (i(obj, i11, i10)) {
                        c0435t.writeInt64(i11, r(j7, obj));
                    }
                    break;
                case 54:
                    if (i(obj, i11, i10)) {
                        c0435t.writeUInt64(i11, r(j7, obj));
                    }
                    break;
                case 55:
                    if (i(obj, i11, i10)) {
                        c0435t.writeInt32(i11, q(j7, obj));
                    }
                    break;
                case 56:
                    if (i(obj, i11, i10)) {
                        c0435t.writeFixed64(i11, r(j7, obj));
                    }
                    break;
                case 57:
                    if (i(obj, i11, i10)) {
                        c0435t.writeFixed32(i11, q(j7, obj));
                    }
                    break;
                case 58:
                    if (i(obj, i11, i10)) {
                        c0435t.writeBool(i11, ((Boolean) H0.f5772d.getObject(obj, j7)).booleanValue());
                    }
                    break;
                case 59:
                    if (i(obj, i11, i10)) {
                        E(i11, unsafe.getObject(obj, j7), c0435t);
                    }
                    break;
                case CacheConfig.DEFAULT_ASYNCHRONOUS_WORKER_IDLE_LIFETIME_SECS /* 60 */:
                    if (i(obj, i11, i10)) {
                        c0435t.writeMessage(i11, unsafe.getObject(obj, j7), e(i10));
                    }
                    break;
                case 61:
                    if (i(obj, i11, i10)) {
                        c0435t.writeBytes(i11, (ByteString) unsafe.getObject(obj, j7));
                    }
                    break;
                case 62:
                    if (i(obj, i11, i10)) {
                        c0435t.writeUInt32(i11, q(j7, obj));
                    }
                    break;
                case 63:
                    if (i(obj, i11, i10)) {
                        c0435t.writeEnum(i11, q(j7, obj));
                    }
                    break;
                case 64:
                    if (i(obj, i11, i10)) {
                        c0435t.writeSFixed32(i11, q(j7, obj));
                    }
                    break;
                case 65:
                    if (i(obj, i11, i10)) {
                        c0435t.writeSFixed64(i11, r(j7, obj));
                    }
                    break;
                case 66:
                    if (i(obj, i11, i10)) {
                        c0435t.writeSInt32(i11, q(j7, obj));
                    }
                    break;
                case 67:
                    if (i(obj, i11, i10)) {
                        c0435t.writeSInt64(i11, r(j7, obj));
                    }
                    break;
                case 68:
                    if (i(obj, i11, i10)) {
                        c0435t.writeGroup(i11, unsafe.getObject(obj, j7), e(i10));
                    }
                    break;
            }
        }
        ((y0) this.f5851m).getClass();
        ((F) obj).unknownFields.writeTo(c0435t);
    }

    public final void D(C0435t c0435t, int i2, Object obj, int i7) {
        if (obj != null) {
            Object d7 = d(i7);
            V v6 = this.f5852n;
            c0435t.writeMap(i2, v6.forMapMetadata(d7), v6.forMapData(obj));
        }
    }

    public final boolean a(int i2, Object obj, Object obj2) {
        return h(i2, obj) == h(i2, obj2);
    }

    public final void b(int i2, Object obj, Object obj2) {
        int i7 = this.f5839a[i2];
        if (H0.f5772d.getObject(obj, B(i2) & 1048575) == null) {
            return;
        }
        c(i2);
    }

    public final void c(int i2) {
        if (this.f5840b[((i2 / 3) * 2) + 1] != null) {
            throw new ClassCastException();
        }
    }

    public final Object d(int i2) {
        return this.f5840b[(i2 / 3) * 2];
    }

    public final InterfaceC0428l0 e(int i2) {
        int i7 = (i2 / 3) * 2;
        Object[] objArr = this.f5840b;
        InterfaceC0428l0 interfaceC0428l0 = (InterfaceC0428l0) objArr[i7];
        if (interfaceC0428l0 != null) {
            return interfaceC0428l0;
        }
        InterfaceC0428l0 schemaFor = C0420h0.getInstance().schemaFor((Class) objArr[i7 + 1]);
        objArr[i7] = schemaFor;
        return schemaFor;
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0074, code lost:
    
        if (androidx.datastore.preferences.protobuf.n0.y(r5.getObject(r12, r7), r5.getObject(r13, r7)) != false) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x008a, code lost:
    
        if (r5.getLong(r12, r7) == r5.getLong(r13, r7)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x009e, code lost:
    
        if (r5.getInt(r12, r7) == r5.getInt(r13, r7)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00b4, code lost:
    
        if (r5.getLong(r12, r7) == r5.getLong(r13, r7)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00c8, code lost:
    
        if (r5.getInt(r12, r7) == r5.getInt(r13, r7)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00dc, code lost:
    
        if (r5.getInt(r12, r7) == r5.getInt(r13, r7)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00f0, code lost:
    
        if (r5.getInt(r12, r7) == r5.getInt(r13, r7)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0108, code lost:
    
        if (androidx.datastore.preferences.protobuf.n0.y(r5.getObject(r12, r7), r5.getObject(r13, r7)) != false) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0120, code lost:
    
        if (androidx.datastore.preferences.protobuf.n0.y(r5.getObject(r12, r7), r5.getObject(r13, r7)) != false) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x0138, code lost:
    
        if (androidx.datastore.preferences.protobuf.n0.y(r5.getObject(r12, r7), r5.getObject(r13, r7)) != false) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x014c, code lost:
    
        if (r5.getBoolean(r12, r7) == r5.getBoolean(r13, r7)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0160, code lost:
    
        if (r5.getInt(r12, r7) == r5.getInt(r13, r7)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0176, code lost:
    
        if (r5.getLong(r12, r7) == r5.getLong(r13, r7)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x018a, code lost:
    
        if (r5.getInt(r12, r7) == r5.getInt(r13, r7)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x019f, code lost:
    
        if (r5.getLong(r12, r7) == r5.getLong(r13, r7)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x01b4, code lost:
    
        if (r5.getLong(r12, r7) == r5.getLong(r13, r7)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x01cf, code lost:
    
        if (java.lang.Float.floatToIntBits(r5.getFloat(r12, r7)) == java.lang.Float.floatToIntBits(r5.getFloat(r13, r7))) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x01ec, code lost:
    
        if (java.lang.Double.doubleToLongBits(r5.getDouble(r12, r7)) == java.lang.Double.doubleToLongBits(r5.getDouble(r13, r7))) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0039, code lost:
    
        if (androidx.datastore.preferences.protobuf.n0.y(r9.getObject(r12, r7), r9.getObject(r13, r7)) != false) goto L105;
     */
    @Override // androidx.datastore.preferences.protobuf.InterfaceC0428l0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean equals(java.lang.Object r12, java.lang.Object r13) {
        /*
            Method dump skipped, instructions count: 670
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.preferences.protobuf.C0408b0.equals(java.lang.Object, java.lang.Object):boolean");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public final int f(Object obj) {
        int i2;
        int i7;
        int computeDoubleSize;
        int computeBoolSize;
        int computeBytesSize;
        int computeBoolSize2;
        Unsafe unsafe = f5838p;
        int i8 = -1;
        int i9 = 0;
        int i10 = 0;
        int i11 = 0;
        while (true) {
            int[] iArr = this.f5839a;
            if (i9 >= iArr.length) {
                ((y0) this.f5851m).getClass();
                return ((F) obj).unknownFields.getSerializedSize() + i10;
            }
            int B6 = B(i9);
            int i12 = iArr[i9];
            int A6 = A(B6);
            if (A6 <= 17) {
                int i13 = iArr[i9 + 2];
                int i14 = i13 & 1048575;
                i7 = 1 << (i13 >>> 20);
                i2 = 1048575;
                if (i14 != i8) {
                    i11 = unsafe.getInt(obj, i14);
                    i8 = i14;
                }
            } else {
                i2 = 1048575;
                i7 = 0;
            }
            long j7 = B6 & i2;
            int i15 = i8;
            switch (A6) {
                case 0:
                    if ((i11 & i7) != 0) {
                        computeDoubleSize = AbstractC0434s.computeDoubleSize(i12, FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE);
                        i10 += computeDoubleSize;
                        break;
                    } else {
                        break;
                    }
                case 1:
                    if ((i11 & i7) != 0) {
                        computeDoubleSize = AbstractC0434s.computeFloatSize(i12, 0.0f);
                        i10 += computeDoubleSize;
                        break;
                    } else {
                        break;
                    }
                case 2:
                    if ((i11 & i7) != 0) {
                        computeDoubleSize = AbstractC0434s.computeInt64Size(i12, unsafe.getLong(obj, j7));
                        i10 += computeDoubleSize;
                        break;
                    } else {
                        break;
                    }
                case 3:
                    if ((i11 & i7) != 0) {
                        computeDoubleSize = AbstractC0434s.computeUInt64Size(i12, unsafe.getLong(obj, j7));
                        i10 += computeDoubleSize;
                        break;
                    } else {
                        break;
                    }
                case 4:
                    if ((i11 & i7) != 0) {
                        computeDoubleSize = AbstractC0434s.computeInt32Size(i12, unsafe.getInt(obj, j7));
                        i10 += computeDoubleSize;
                        break;
                    } else {
                        break;
                    }
                case 5:
                    if ((i7 & i11) != 0) {
                        computeDoubleSize = AbstractC0434s.computeFixed64Size(i12, 0L);
                        i10 += computeDoubleSize;
                        break;
                    } else {
                        break;
                    }
                case 6:
                    if ((i11 & i7) != 0) {
                        computeDoubleSize = AbstractC0434s.computeFixed32Size(i12, 0);
                        i10 += computeDoubleSize;
                        break;
                    }
                    break;
                case 7:
                    if ((i11 & i7) != 0) {
                        computeBoolSize = AbstractC0434s.computeBoolSize(i12, true);
                        i10 += computeBoolSize;
                    }
                    break;
                case 8:
                    if ((i11 & i7) != 0) {
                        Object object = unsafe.getObject(obj, j7);
                        computeBytesSize = object instanceof ByteString ? AbstractC0434s.computeBytesSize(i12, (ByteString) object) : AbstractC0434s.computeStringSize(i12, (String) object);
                        i10 = computeBytesSize + i10;
                    }
                    break;
                case 9:
                    if ((i11 & i7) != 0) {
                        Object object2 = unsafe.getObject(obj, j7);
                        InterfaceC0428l0 e3 = e(i9);
                        Class cls = n0.f5881a;
                        int computeTagSize = AbstractC0434s.computeTagSize(i12);
                        int a7 = ((AbstractC0407b) ((InterfaceC0406a0) object2)).a(e3);
                        i10 = A.i.A(a7, a7, computeTagSize, i10);
                    }
                    break;
                case 10:
                    if ((i11 & i7) != 0) {
                        computeBoolSize = AbstractC0434s.computeBytesSize(i12, (ByteString) unsafe.getObject(obj, j7));
                        i10 += computeBoolSize;
                    }
                    break;
                case 11:
                    if ((i11 & i7) != 0) {
                        computeBoolSize = AbstractC0434s.computeUInt32Size(i12, unsafe.getInt(obj, j7));
                        i10 += computeBoolSize;
                    }
                    break;
                case 12:
                    if ((i11 & i7) != 0) {
                        computeBoolSize = AbstractC0434s.computeEnumSize(i12, unsafe.getInt(obj, j7));
                        i10 += computeBoolSize;
                    }
                    break;
                case 13:
                    if ((i11 & i7) != 0) {
                        computeBoolSize = AbstractC0434s.computeSFixed32Size(i12, 0);
                        i10 += computeBoolSize;
                    }
                    break;
                case 14:
                    if ((i7 & i11) != 0) {
                        computeBoolSize = AbstractC0434s.computeSFixed64Size(i12, 0L);
                        i10 += computeBoolSize;
                    }
                    break;
                case 15:
                    if ((i11 & i7) != 0) {
                        computeBoolSize = AbstractC0434s.computeSInt32Size(i12, unsafe.getInt(obj, j7));
                        i10 += computeBoolSize;
                    }
                    break;
                case 16:
                    if ((i11 & i7) != 0) {
                        computeBoolSize = AbstractC0434s.computeSInt64Size(i12, unsafe.getLong(obj, j7));
                        i10 += computeBoolSize;
                    }
                    break;
                case 17:
                    if ((i11 & i7) != 0) {
                        computeBoolSize = AbstractC0434s.a(i12, (InterfaceC0406a0) unsafe.getObject(obj, j7), e(i9));
                        i10 += computeBoolSize;
                    }
                    break;
                case 18:
                    computeBoolSize = n0.f(i12, (List) unsafe.getObject(obj, j7));
                    i10 += computeBoolSize;
                    break;
                case 19:
                    computeBoolSize = n0.d(i12, (List) unsafe.getObject(obj, j7));
                    i10 += computeBoolSize;
                    break;
                case 20:
                    computeBoolSize = n0.j(i12, (List) unsafe.getObject(obj, j7));
                    i10 += computeBoolSize;
                    break;
                case 21:
                    computeBoolSize = n0.t(i12, (List) unsafe.getObject(obj, j7));
                    i10 += computeBoolSize;
                    break;
                case 22:
                    computeBoolSize = n0.h(i12, (List) unsafe.getObject(obj, j7));
                    i10 += computeBoolSize;
                    break;
                case 23:
                    computeBoolSize = n0.f(i12, (List) unsafe.getObject(obj, j7));
                    i10 += computeBoolSize;
                    break;
                case 24:
                    computeBoolSize = n0.d(i12, (List) unsafe.getObject(obj, j7));
                    i10 += computeBoolSize;
                    break;
                case 25:
                    List list = (List) unsafe.getObject(obj, j7);
                    Class cls2 = n0.f5881a;
                    int size = list.size();
                    if (size != 0) {
                        computeBoolSize2 = AbstractC0434s.computeBoolSize(i12, true) * size;
                        i10 += computeBoolSize2;
                        break;
                    }
                    computeBoolSize2 = 0;
                    i10 += computeBoolSize2;
                case 26:
                    computeBoolSize = n0.q(i12, (List) unsafe.getObject(obj, j7));
                    i10 += computeBoolSize;
                    break;
                case 27:
                    computeBoolSize = n0.l(i12, (List) unsafe.getObject(obj, j7), e(i9));
                    i10 += computeBoolSize;
                    break;
                case 28:
                    computeBoolSize = n0.a(i12, (List) unsafe.getObject(obj, j7));
                    i10 += computeBoolSize;
                    break;
                case 29:
                    computeBoolSize = n0.r(i12, (List) unsafe.getObject(obj, j7));
                    i10 += computeBoolSize;
                    break;
                case 30:
                    computeBoolSize = n0.b(i12, (List) unsafe.getObject(obj, j7));
                    i10 += computeBoolSize;
                    break;
                case 31:
                    computeBoolSize = n0.d(i12, (List) unsafe.getObject(obj, j7));
                    i10 += computeBoolSize;
                    break;
                case 32:
                    computeBoolSize = n0.f(i12, (List) unsafe.getObject(obj, j7));
                    i10 += computeBoolSize;
                    break;
                case 33:
                    computeBoolSize = n0.m(i12, (List) unsafe.getObject(obj, j7));
                    i10 += computeBoolSize;
                    break;
                case 34:
                    computeBoolSize = n0.o(i12, (List) unsafe.getObject(obj, j7));
                    i10 += computeBoolSize;
                    break;
                case 35:
                    int g7 = n0.g((List) unsafe.getObject(obj, j7));
                    if (g7 > 0) {
                        i10 = A.i.A(g7, AbstractC0434s.computeTagSize(i12), g7, i10);
                    }
                    break;
                case 36:
                    int e7 = n0.e((List) unsafe.getObject(obj, j7));
                    if (e7 > 0) {
                        i10 = A.i.A(e7, AbstractC0434s.computeTagSize(i12), e7, i10);
                    }
                    break;
                case LangUtils.HASH_OFFSET /* 37 */:
                    int k7 = n0.k((List) unsafe.getObject(obj, j7));
                    if (k7 > 0) {
                        i10 = A.i.A(k7, AbstractC0434s.computeTagSize(i12), k7, i10);
                    }
                    break;
                case 38:
                    int u6 = n0.u((List) unsafe.getObject(obj, j7));
                    if (u6 > 0) {
                        i10 = A.i.A(u6, AbstractC0434s.computeTagSize(i12), u6, i10);
                    }
                    break;
                case 39:
                    int i16 = n0.i((List) unsafe.getObject(obj, j7));
                    if (i16 > 0) {
                        i10 = A.i.A(i16, AbstractC0434s.computeTagSize(i12), i16, i10);
                    }
                    break;
                case 40:
                    int g8 = n0.g((List) unsafe.getObject(obj, j7));
                    if (g8 > 0) {
                        i10 = A.i.A(g8, AbstractC0434s.computeTagSize(i12), g8, i10);
                    }
                    break;
                case 41:
                    int e8 = n0.e((List) unsafe.getObject(obj, j7));
                    if (e8 > 0) {
                        i10 = A.i.A(e8, AbstractC0434s.computeTagSize(i12), e8, i10);
                    }
                    break;
                case 42:
                    List list2 = (List) unsafe.getObject(obj, j7);
                    Class cls3 = n0.f5881a;
                    int size2 = list2.size();
                    if (size2 > 0) {
                        i10 = A.i.A(size2, AbstractC0434s.computeTagSize(i12), size2, i10);
                    }
                    break;
                case 43:
                    int s6 = n0.s((List) unsafe.getObject(obj, j7));
                    if (s6 > 0) {
                        i10 = A.i.A(s6, AbstractC0434s.computeTagSize(i12), s6, i10);
                    }
                    break;
                case 44:
                    int c7 = n0.c((List) unsafe.getObject(obj, j7));
                    if (c7 > 0) {
                        i10 = A.i.A(c7, AbstractC0434s.computeTagSize(i12), c7, i10);
                    }
                    break;
                case 45:
                    int e9 = n0.e((List) unsafe.getObject(obj, j7));
                    if (e9 > 0) {
                        i10 = A.i.A(e9, AbstractC0434s.computeTagSize(i12), e9, i10);
                    }
                    break;
                case 46:
                    int g9 = n0.g((List) unsafe.getObject(obj, j7));
                    if (g9 > 0) {
                        i10 = A.i.A(g9, AbstractC0434s.computeTagSize(i12), g9, i10);
                    }
                    break;
                case 47:
                    int n7 = n0.n((List) unsafe.getObject(obj, j7));
                    if (n7 > 0) {
                        i10 = A.i.A(n7, AbstractC0434s.computeTagSize(i12), n7, i10);
                    }
                    break;
                case 48:
                    int p6 = n0.p((List) unsafe.getObject(obj, j7));
                    if (p6 > 0) {
                        i10 = A.i.A(p6, AbstractC0434s.computeTagSize(i12), p6, i10);
                    }
                    break;
                case 49:
                    List list3 = (List) unsafe.getObject(obj, j7);
                    InterfaceC0428l0 e10 = e(i9);
                    Class cls4 = n0.f5881a;
                    int size3 = list3.size();
                    if (size3 != 0) {
                        int i17 = 0;
                        for (int i18 = 0; i18 < size3; i18++) {
                            i17 += AbstractC0434s.a(i12, (InterfaceC0406a0) list3.get(i18), e10);
                        }
                        computeBoolSize2 = i17;
                        i10 += computeBoolSize2;
                        break;
                    }
                    computeBoolSize2 = 0;
                    i10 += computeBoolSize2;
                case DefaultRenderersFactory.MAX_DROPPED_VIDEO_FRAME_COUNT_TO_NOTIFY /* 50 */:
                    computeBoolSize = this.f5852n.getSerializedSize(i12, unsafe.getObject(obj, j7), d(i9));
                    i10 += computeBoolSize;
                    break;
                case 51:
                    if (i(obj, i12, i9)) {
                        computeBoolSize = AbstractC0434s.computeDoubleSize(i12, FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE);
                        i10 += computeBoolSize;
                    }
                    break;
                case 52:
                    if (i(obj, i12, i9)) {
                        computeBoolSize = AbstractC0434s.computeFloatSize(i12, 0.0f);
                        i10 += computeBoolSize;
                    }
                    break;
                case 53:
                    if (i(obj, i12, i9)) {
                        computeBoolSize = AbstractC0434s.computeInt64Size(i12, r(j7, obj));
                        i10 += computeBoolSize;
                    }
                    break;
                case 54:
                    if (i(obj, i12, i9)) {
                        computeBoolSize = AbstractC0434s.computeUInt64Size(i12, r(j7, obj));
                        i10 += computeBoolSize;
                    }
                    break;
                case 55:
                    if (i(obj, i12, i9)) {
                        computeBoolSize = AbstractC0434s.computeInt32Size(i12, q(j7, obj));
                        i10 += computeBoolSize;
                    }
                    break;
                case 56:
                    if (i(obj, i12, i9)) {
                        computeBoolSize = AbstractC0434s.computeFixed64Size(i12, 0L);
                        i10 += computeBoolSize;
                    }
                    break;
                case 57:
                    if (i(obj, i12, i9)) {
                        computeBoolSize = AbstractC0434s.computeFixed32Size(i12, 0);
                        i10 += computeBoolSize;
                    }
                    break;
                case 58:
                    if (i(obj, i12, i9)) {
                        computeBoolSize = AbstractC0434s.computeBoolSize(i12, true);
                        i10 += computeBoolSize;
                    }
                    break;
                case 59:
                    if (i(obj, i12, i9)) {
                        Object object3 = unsafe.getObject(obj, j7);
                        computeBytesSize = object3 instanceof ByteString ? AbstractC0434s.computeBytesSize(i12, (ByteString) object3) : AbstractC0434s.computeStringSize(i12, (String) object3);
                        i10 = computeBytesSize + i10;
                    }
                    break;
                case CacheConfig.DEFAULT_ASYNCHRONOUS_WORKER_IDLE_LIFETIME_SECS /* 60 */:
                    if (i(obj, i12, i9)) {
                        Object object4 = unsafe.getObject(obj, j7);
                        InterfaceC0428l0 e11 = e(i9);
                        Class cls5 = n0.f5881a;
                        int computeTagSize2 = AbstractC0434s.computeTagSize(i12);
                        int a8 = ((AbstractC0407b) ((InterfaceC0406a0) object4)).a(e11);
                        i10 = A.i.A(a8, a8, computeTagSize2, i10);
                    }
                    break;
                case 61:
                    if (i(obj, i12, i9)) {
                        computeBoolSize = AbstractC0434s.computeBytesSize(i12, (ByteString) unsafe.getObject(obj, j7));
                        i10 += computeBoolSize;
                    }
                    break;
                case 62:
                    if (i(obj, i12, i9)) {
                        computeBoolSize = AbstractC0434s.computeUInt32Size(i12, q(j7, obj));
                        i10 += computeBoolSize;
                    }
                    break;
                case 63:
                    if (i(obj, i12, i9)) {
                        computeBoolSize = AbstractC0434s.computeEnumSize(i12, q(j7, obj));
                        i10 += computeBoolSize;
                    }
                    break;
                case 64:
                    if (i(obj, i12, i9)) {
                        computeBoolSize = AbstractC0434s.computeSFixed32Size(i12, 0);
                        i10 += computeBoolSize;
                    }
                    break;
                case 65:
                    if (i(obj, i12, i9)) {
                        computeBoolSize = AbstractC0434s.computeSFixed64Size(i12, 0L);
                        i10 += computeBoolSize;
                    }
                    break;
                case 66:
                    if (i(obj, i12, i9)) {
                        computeBoolSize = AbstractC0434s.computeSInt32Size(i12, q(j7, obj));
                        i10 += computeBoolSize;
                    }
                    break;
                case 67:
                    if (i(obj, i12, i9)) {
                        computeBoolSize = AbstractC0434s.computeSInt64Size(i12, r(j7, obj));
                        i10 += computeBoolSize;
                    }
                    break;
                case 68:
                    if (i(obj, i12, i9)) {
                        computeBoolSize = AbstractC0434s.a(i12, (InterfaceC0406a0) unsafe.getObject(obj, j7), e(i9));
                        i10 += computeBoolSize;
                    }
                    break;
            }
            i9 += 3;
            i8 = i15;
        }
    }

    public final int g(Object obj) {
        int computeDoubleSize;
        int computeBytesSize;
        int i2;
        Unsafe unsafe = f5838p;
        int i7 = 0;
        int i8 = 0;
        while (true) {
            int[] iArr = this.f5839a;
            if (i7 >= iArr.length) {
                ((y0) this.f5851m).getClass();
                return ((F) obj).unknownFields.getSerializedSize() + i8;
            }
            int B6 = B(i7);
            int A6 = A(B6);
            int i9 = iArr[i7];
            long j7 = B6 & 1048575;
            if (A6 >= FieldType.f5751e.id() && A6 <= FieldType.f5752f.id()) {
                int i10 = iArr[i7 + 2];
            }
            switch (A6) {
                case 0:
                    if (h(i7, obj)) {
                        computeDoubleSize = AbstractC0434s.computeDoubleSize(i9, FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE);
                        i8 += computeDoubleSize;
                        break;
                    } else {
                        break;
                    }
                case 1:
                    if (h(i7, obj)) {
                        computeDoubleSize = AbstractC0434s.computeFloatSize(i9, 0.0f);
                        i8 += computeDoubleSize;
                        break;
                    } else {
                        break;
                    }
                case 2:
                    if (h(i7, obj)) {
                        computeDoubleSize = AbstractC0434s.computeInt64Size(i9, H0.f5772d.getLong(obj, j7));
                        i8 += computeDoubleSize;
                        break;
                    } else {
                        break;
                    }
                case 3:
                    if (h(i7, obj)) {
                        computeDoubleSize = AbstractC0434s.computeUInt64Size(i9, H0.f5772d.getLong(obj, j7));
                        i8 += computeDoubleSize;
                        break;
                    } else {
                        break;
                    }
                case 4:
                    if (h(i7, obj)) {
                        computeDoubleSize = AbstractC0434s.computeInt32Size(i9, H0.f5772d.getInt(obj, j7));
                        i8 += computeDoubleSize;
                        break;
                    } else {
                        break;
                    }
                case 5:
                    if (h(i7, obj)) {
                        computeDoubleSize = AbstractC0434s.computeFixed64Size(i9, 0L);
                        i8 += computeDoubleSize;
                        break;
                    } else {
                        break;
                    }
                case 6:
                    if (h(i7, obj)) {
                        computeDoubleSize = AbstractC0434s.computeFixed32Size(i9, 0);
                        i8 += computeDoubleSize;
                        break;
                    } else {
                        break;
                    }
                case 7:
                    if (h(i7, obj)) {
                        computeDoubleSize = AbstractC0434s.computeBoolSize(i9, true);
                        i8 += computeDoubleSize;
                        break;
                    } else {
                        break;
                    }
                case 8:
                    if (h(i7, obj)) {
                        Object object = H0.f5772d.getObject(obj, j7);
                        computeBytesSize = object instanceof ByteString ? AbstractC0434s.computeBytesSize(i9, (ByteString) object) : AbstractC0434s.computeStringSize(i9, (String) object);
                        i8 = computeBytesSize + i8;
                        break;
                    } else {
                        break;
                    }
                case 9:
                    if (h(i7, obj)) {
                        Object object2 = H0.f5772d.getObject(obj, j7);
                        InterfaceC0428l0 e3 = e(i7);
                        Class cls = n0.f5881a;
                        int computeTagSize = AbstractC0434s.computeTagSize(i9);
                        int a7 = ((AbstractC0407b) ((InterfaceC0406a0) object2)).a(e3);
                        i8 = A.i.A(a7, a7, computeTagSize, i8);
                        break;
                    } else {
                        break;
                    }
                case 10:
                    if (h(i7, obj)) {
                        computeDoubleSize = AbstractC0434s.computeBytesSize(i9, (ByteString) H0.f5772d.getObject(obj, j7));
                        i8 += computeDoubleSize;
                        break;
                    } else {
                        break;
                    }
                case 11:
                    if (h(i7, obj)) {
                        computeDoubleSize = AbstractC0434s.computeUInt32Size(i9, H0.f5772d.getInt(obj, j7));
                        i8 += computeDoubleSize;
                        break;
                    } else {
                        break;
                    }
                case 12:
                    if (h(i7, obj)) {
                        computeDoubleSize = AbstractC0434s.computeEnumSize(i9, H0.f5772d.getInt(obj, j7));
                        i8 += computeDoubleSize;
                        break;
                    } else {
                        break;
                    }
                case 13:
                    if (h(i7, obj)) {
                        computeDoubleSize = AbstractC0434s.computeSFixed32Size(i9, 0);
                        i8 += computeDoubleSize;
                        break;
                    } else {
                        break;
                    }
                case 14:
                    if (h(i7, obj)) {
                        computeDoubleSize = AbstractC0434s.computeSFixed64Size(i9, 0L);
                        i8 += computeDoubleSize;
                        break;
                    } else {
                        break;
                    }
                case 15:
                    if (h(i7, obj)) {
                        computeDoubleSize = AbstractC0434s.computeSInt32Size(i9, H0.f5772d.getInt(obj, j7));
                        i8 += computeDoubleSize;
                        break;
                    } else {
                        break;
                    }
                case 16:
                    if (h(i7, obj)) {
                        computeDoubleSize = AbstractC0434s.computeSInt64Size(i9, H0.f5772d.getLong(obj, j7));
                        i8 += computeDoubleSize;
                        break;
                    } else {
                        break;
                    }
                case 17:
                    if (h(i7, obj)) {
                        computeDoubleSize = AbstractC0434s.a(i9, (InterfaceC0406a0) H0.f5772d.getObject(obj, j7), e(i7));
                        i8 += computeDoubleSize;
                        break;
                    } else {
                        break;
                    }
                case 18:
                    computeDoubleSize = n0.f(i9, j(j7, obj));
                    i8 += computeDoubleSize;
                    break;
                case 19:
                    computeDoubleSize = n0.d(i9, j(j7, obj));
                    i8 += computeDoubleSize;
                    break;
                case 20:
                    computeDoubleSize = n0.j(i9, j(j7, obj));
                    i8 += computeDoubleSize;
                    break;
                case 21:
                    computeDoubleSize = n0.t(i9, j(j7, obj));
                    i8 += computeDoubleSize;
                    break;
                case 22:
                    computeDoubleSize = n0.h(i9, j(j7, obj));
                    i8 += computeDoubleSize;
                    break;
                case 23:
                    computeDoubleSize = n0.f(i9, j(j7, obj));
                    i8 += computeDoubleSize;
                    break;
                case 24:
                    computeDoubleSize = n0.d(i9, j(j7, obj));
                    i8 += computeDoubleSize;
                    break;
                case 25:
                    List j8 = j(j7, obj);
                    Class cls2 = n0.f5881a;
                    int size = j8.size();
                    i8 += size == 0 ? 0 : AbstractC0434s.computeBoolSize(i9, true) * size;
                    break;
                case 26:
                    computeDoubleSize = n0.q(i9, j(j7, obj));
                    i8 += computeDoubleSize;
                    break;
                case 27:
                    computeDoubleSize = n0.l(i9, j(j7, obj), e(i7));
                    i8 += computeDoubleSize;
                    break;
                case 28:
                    computeDoubleSize = n0.a(i9, j(j7, obj));
                    i8 += computeDoubleSize;
                    break;
                case 29:
                    computeDoubleSize = n0.r(i9, j(j7, obj));
                    i8 += computeDoubleSize;
                    break;
                case 30:
                    computeDoubleSize = n0.b(i9, j(j7, obj));
                    i8 += computeDoubleSize;
                    break;
                case 31:
                    computeDoubleSize = n0.d(i9, j(j7, obj));
                    i8 += computeDoubleSize;
                    break;
                case 32:
                    computeDoubleSize = n0.f(i9, j(j7, obj));
                    i8 += computeDoubleSize;
                    break;
                case 33:
                    computeDoubleSize = n0.m(i9, j(j7, obj));
                    i8 += computeDoubleSize;
                    break;
                case 34:
                    computeDoubleSize = n0.o(i9, j(j7, obj));
                    i8 += computeDoubleSize;
                    break;
                case 35:
                    int g7 = n0.g((List) unsafe.getObject(obj, j7));
                    if (g7 > 0) {
                        i8 = A.i.A(g7, AbstractC0434s.computeTagSize(i9), g7, i8);
                        break;
                    } else {
                        break;
                    }
                case 36:
                    int e7 = n0.e((List) unsafe.getObject(obj, j7));
                    if (e7 > 0) {
                        i8 = A.i.A(e7, AbstractC0434s.computeTagSize(i9), e7, i8);
                        break;
                    } else {
                        break;
                    }
                case LangUtils.HASH_OFFSET /* 37 */:
                    int k7 = n0.k((List) unsafe.getObject(obj, j7));
                    if (k7 > 0) {
                        i8 = A.i.A(k7, AbstractC0434s.computeTagSize(i9), k7, i8);
                        break;
                    } else {
                        break;
                    }
                case 38:
                    int u6 = n0.u((List) unsafe.getObject(obj, j7));
                    if (u6 > 0) {
                        i8 = A.i.A(u6, AbstractC0434s.computeTagSize(i9), u6, i8);
                        break;
                    } else {
                        break;
                    }
                case 39:
                    int i11 = n0.i((List) unsafe.getObject(obj, j7));
                    if (i11 > 0) {
                        i8 = A.i.A(i11, AbstractC0434s.computeTagSize(i9), i11, i8);
                        break;
                    } else {
                        break;
                    }
                case 40:
                    int g8 = n0.g((List) unsafe.getObject(obj, j7));
                    if (g8 > 0) {
                        i8 = A.i.A(g8, AbstractC0434s.computeTagSize(i9), g8, i8);
                        break;
                    } else {
                        break;
                    }
                case 41:
                    int e8 = n0.e((List) unsafe.getObject(obj, j7));
                    if (e8 > 0) {
                        i8 = A.i.A(e8, AbstractC0434s.computeTagSize(i9), e8, i8);
                        break;
                    } else {
                        break;
                    }
                case 42:
                    List list = (List) unsafe.getObject(obj, j7);
                    Class cls3 = n0.f5881a;
                    int size2 = list.size();
                    if (size2 > 0) {
                        i8 = A.i.A(size2, AbstractC0434s.computeTagSize(i9), size2, i8);
                        break;
                    } else {
                        break;
                    }
                case 43:
                    int s6 = n0.s((List) unsafe.getObject(obj, j7));
                    if (s6 > 0) {
                        i8 = A.i.A(s6, AbstractC0434s.computeTagSize(i9), s6, i8);
                        break;
                    } else {
                        break;
                    }
                case 44:
                    int c7 = n0.c((List) unsafe.getObject(obj, j7));
                    if (c7 > 0) {
                        i8 = A.i.A(c7, AbstractC0434s.computeTagSize(i9), c7, i8);
                        break;
                    } else {
                        break;
                    }
                case 45:
                    int e9 = n0.e((List) unsafe.getObject(obj, j7));
                    if (e9 > 0) {
                        i8 = A.i.A(e9, AbstractC0434s.computeTagSize(i9), e9, i8);
                        break;
                    } else {
                        break;
                    }
                case 46:
                    int g9 = n0.g((List) unsafe.getObject(obj, j7));
                    if (g9 > 0) {
                        i8 = A.i.A(g9, AbstractC0434s.computeTagSize(i9), g9, i8);
                        break;
                    } else {
                        break;
                    }
                case 47:
                    int n7 = n0.n((List) unsafe.getObject(obj, j7));
                    if (n7 > 0) {
                        i8 = A.i.A(n7, AbstractC0434s.computeTagSize(i9), n7, i8);
                        break;
                    } else {
                        break;
                    }
                case 48:
                    int p6 = n0.p((List) unsafe.getObject(obj, j7));
                    if (p6 > 0) {
                        i8 = A.i.A(p6, AbstractC0434s.computeTagSize(i9), p6, i8);
                        break;
                    } else {
                        break;
                    }
                case 49:
                    List j9 = j(j7, obj);
                    InterfaceC0428l0 e10 = e(i7);
                    Class cls4 = n0.f5881a;
                    int size3 = j9.size();
                    if (size3 == 0) {
                        i2 = 0;
                    } else {
                        i2 = 0;
                        for (int i12 = 0; i12 < size3; i12++) {
                            i2 += AbstractC0434s.a(i9, (InterfaceC0406a0) j9.get(i12), e10);
                        }
                    }
                    i8 += i2;
                    break;
                case DefaultRenderersFactory.MAX_DROPPED_VIDEO_FRAME_COUNT_TO_NOTIFY /* 50 */:
                    computeDoubleSize = this.f5852n.getSerializedSize(i9, H0.f5772d.getObject(obj, j7), d(i7));
                    i8 += computeDoubleSize;
                    break;
                case 51:
                    if (i(obj, i9, i7)) {
                        computeDoubleSize = AbstractC0434s.computeDoubleSize(i9, FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE);
                        i8 += computeDoubleSize;
                        break;
                    } else {
                        break;
                    }
                case 52:
                    if (i(obj, i9, i7)) {
                        computeDoubleSize = AbstractC0434s.computeFloatSize(i9, 0.0f);
                        i8 += computeDoubleSize;
                        break;
                    } else {
                        break;
                    }
                case 53:
                    if (i(obj, i9, i7)) {
                        computeDoubleSize = AbstractC0434s.computeInt64Size(i9, r(j7, obj));
                        i8 += computeDoubleSize;
                        break;
                    } else {
                        break;
                    }
                case 54:
                    if (i(obj, i9, i7)) {
                        computeDoubleSize = AbstractC0434s.computeUInt64Size(i9, r(j7, obj));
                        i8 += computeDoubleSize;
                        break;
                    } else {
                        break;
                    }
                case 55:
                    if (i(obj, i9, i7)) {
                        computeDoubleSize = AbstractC0434s.computeInt32Size(i9, q(j7, obj));
                        i8 += computeDoubleSize;
                        break;
                    } else {
                        break;
                    }
                case 56:
                    if (i(obj, i9, i7)) {
                        computeDoubleSize = AbstractC0434s.computeFixed64Size(i9, 0L);
                        i8 += computeDoubleSize;
                        break;
                    } else {
                        break;
                    }
                case 57:
                    if (i(obj, i9, i7)) {
                        computeDoubleSize = AbstractC0434s.computeFixed32Size(i9, 0);
                        i8 += computeDoubleSize;
                        break;
                    } else {
                        break;
                    }
                case 58:
                    if (i(obj, i9, i7)) {
                        computeDoubleSize = AbstractC0434s.computeBoolSize(i9, true);
                        i8 += computeDoubleSize;
                        break;
                    } else {
                        break;
                    }
                case 59:
                    if (i(obj, i9, i7)) {
                        Object object3 = H0.f5772d.getObject(obj, j7);
                        computeBytesSize = object3 instanceof ByteString ? AbstractC0434s.computeBytesSize(i9, (ByteString) object3) : AbstractC0434s.computeStringSize(i9, (String) object3);
                        i8 = computeBytesSize + i8;
                        break;
                    } else {
                        break;
                    }
                case CacheConfig.DEFAULT_ASYNCHRONOUS_WORKER_IDLE_LIFETIME_SECS /* 60 */:
                    if (i(obj, i9, i7)) {
                        Object object4 = H0.f5772d.getObject(obj, j7);
                        InterfaceC0428l0 e11 = e(i7);
                        Class cls5 = n0.f5881a;
                        int computeTagSize2 = AbstractC0434s.computeTagSize(i9);
                        int a8 = ((AbstractC0407b) ((InterfaceC0406a0) object4)).a(e11);
                        i8 = A.i.A(a8, a8, computeTagSize2, i8);
                        break;
                    } else {
                        break;
                    }
                case 61:
                    if (i(obj, i9, i7)) {
                        computeDoubleSize = AbstractC0434s.computeBytesSize(i9, (ByteString) H0.f5772d.getObject(obj, j7));
                        i8 += computeDoubleSize;
                        break;
                    } else {
                        break;
                    }
                case 62:
                    if (i(obj, i9, i7)) {
                        computeDoubleSize = AbstractC0434s.computeUInt32Size(i9, q(j7, obj));
                        i8 += computeDoubleSize;
                        break;
                    } else {
                        break;
                    }
                case 63:
                    if (i(obj, i9, i7)) {
                        computeDoubleSize = AbstractC0434s.computeEnumSize(i9, q(j7, obj));
                        i8 += computeDoubleSize;
                        break;
                    } else {
                        break;
                    }
                case 64:
                    if (i(obj, i9, i7)) {
                        computeDoubleSize = AbstractC0434s.computeSFixed32Size(i9, 0);
                        i8 += computeDoubleSize;
                        break;
                    } else {
                        break;
                    }
                case 65:
                    if (i(obj, i9, i7)) {
                        computeDoubleSize = AbstractC0434s.computeSFixed64Size(i9, 0L);
                        i8 += computeDoubleSize;
                        break;
                    } else {
                        break;
                    }
                case 66:
                    if (i(obj, i9, i7)) {
                        computeDoubleSize = AbstractC0434s.computeSInt32Size(i9, q(j7, obj));
                        i8 += computeDoubleSize;
                        break;
                    } else {
                        break;
                    }
                case 67:
                    if (i(obj, i9, i7)) {
                        computeDoubleSize = AbstractC0434s.computeSInt64Size(i9, r(j7, obj));
                        i8 += computeDoubleSize;
                        break;
                    } else {
                        break;
                    }
                case 68:
                    if (i(obj, i9, i7)) {
                        computeDoubleSize = AbstractC0434s.a(i9, (InterfaceC0406a0) H0.f5772d.getObject(obj, j7), e(i7));
                        i8 += computeDoubleSize;
                        break;
                    } else {
                        break;
                    }
            }
            i7 += 3;
        }
    }

    @Override // androidx.datastore.preferences.protobuf.InterfaceC0428l0
    public int getSerializedSize(Object obj) {
        return this.f5845g ? g(obj) : f(obj);
    }

    public final boolean h(int i2, Object obj) {
        if (this.f5845g) {
            int B6 = B(i2);
            long j7 = B6 & 1048575;
            switch (A(B6)) {
                case 0:
                    if (H0.f5772d.getDouble(obj, j7) == FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE) {
                        return false;
                    }
                    break;
                case 1:
                    if (H0.f5772d.getFloat(obj, j7) == 0.0f) {
                        return false;
                    }
                    break;
                case 2:
                    if (H0.f5772d.getLong(obj, j7) == 0) {
                        return false;
                    }
                    break;
                case 3:
                    if (H0.f5772d.getLong(obj, j7) == 0) {
                        return false;
                    }
                    break;
                case 4:
                    if (H0.f5772d.getInt(obj, j7) == 0) {
                        return false;
                    }
                    break;
                case 5:
                    if (H0.f5772d.getLong(obj, j7) == 0) {
                        return false;
                    }
                    break;
                case 6:
                    if (H0.f5772d.getInt(obj, j7) == 0) {
                        return false;
                    }
                    break;
                case 7:
                    return H0.f5772d.getBoolean(obj, j7);
                case 8:
                    Object object = H0.f5772d.getObject(obj, j7);
                    if (object instanceof String) {
                        return !((String) object).isEmpty();
                    }
                    if (object instanceof ByteString) {
                        return !ByteString.f5743e.equals(object);
                    }
                    throw new IllegalArgumentException();
                case 9:
                    if (H0.f5772d.getObject(obj, j7) == null) {
                        return false;
                    }
                    break;
                case 10:
                    return !ByteString.f5743e.equals(H0.f5772d.getObject(obj, j7));
                case 11:
                    if (H0.f5772d.getInt(obj, j7) == 0) {
                        return false;
                    }
                    break;
                case 12:
                    if (H0.f5772d.getInt(obj, j7) == 0) {
                        return false;
                    }
                    break;
                case 13:
                    if (H0.f5772d.getInt(obj, j7) == 0) {
                        return false;
                    }
                    break;
                case 14:
                    if (H0.f5772d.getLong(obj, j7) == 0) {
                        return false;
                    }
                    break;
                case 15:
                    if (H0.f5772d.getInt(obj, j7) == 0) {
                        return false;
                    }
                    break;
                case 16:
                    if (H0.f5772d.getLong(obj, j7) == 0) {
                        return false;
                    }
                    break;
                case 17:
                    if (H0.f5772d.getObject(obj, j7) == null) {
                        return false;
                    }
                    break;
                default:
                    throw new IllegalArgumentException();
            }
        } else {
            if ((H0.f5772d.getInt(obj, r6 & 1048575) & (1 << (this.f5839a[i2 + 2] >>> 20))) == 0) {
                return false;
            }
        }
        return true;
    }

    @Override // androidx.datastore.preferences.protobuf.InterfaceC0428l0
    public int hashCode(Object obj) {
        int i2;
        int hashLong;
        int[] iArr = this.f5839a;
        int length = iArr.length;
        int i7 = 0;
        for (int i8 = 0; i8 < length; i8 += 3) {
            int B6 = B(i8);
            int i9 = iArr[i8];
            long j7 = 1048575 & B6;
            int i10 = 37;
            switch (A(B6)) {
                case 0:
                    i2 = i7 * 53;
                    hashLong = I.hashLong(Double.doubleToLongBits(H0.f5772d.getDouble(obj, j7)));
                    i7 = hashLong + i2;
                    break;
                case 1:
                    i2 = i7 * 53;
                    hashLong = Float.floatToIntBits(H0.f5772d.getFloat(obj, j7));
                    i7 = hashLong + i2;
                    break;
                case 2:
                    i2 = i7 * 53;
                    hashLong = I.hashLong(H0.f5772d.getLong(obj, j7));
                    i7 = hashLong + i2;
                    break;
                case 3:
                    i2 = i7 * 53;
                    hashLong = I.hashLong(H0.f5772d.getLong(obj, j7));
                    i7 = hashLong + i2;
                    break;
                case 4:
                    i2 = i7 * 53;
                    hashLong = H0.f5772d.getInt(obj, j7);
                    i7 = hashLong + i2;
                    break;
                case 5:
                    i2 = i7 * 53;
                    hashLong = I.hashLong(H0.f5772d.getLong(obj, j7));
                    i7 = hashLong + i2;
                    break;
                case 6:
                    i2 = i7 * 53;
                    hashLong = H0.f5772d.getInt(obj, j7);
                    i7 = hashLong + i2;
                    break;
                case 7:
                    i2 = i7 * 53;
                    hashLong = I.hashBoolean(H0.f5772d.getBoolean(obj, j7));
                    i7 = hashLong + i2;
                    break;
                case 8:
                    i2 = i7 * 53;
                    hashLong = ((String) H0.f5772d.getObject(obj, j7)).hashCode();
                    i7 = hashLong + i2;
                    break;
                case 9:
                    Object object = H0.f5772d.getObject(obj, j7);
                    if (object != null) {
                        i10 = object.hashCode();
                    }
                    i7 = (i7 * 53) + i10;
                    break;
                case 10:
                    i2 = i7 * 53;
                    hashLong = H0.f5772d.getObject(obj, j7).hashCode();
                    i7 = hashLong + i2;
                    break;
                case 11:
                    i2 = i7 * 53;
                    hashLong = H0.f5772d.getInt(obj, j7);
                    i7 = hashLong + i2;
                    break;
                case 12:
                    i2 = i7 * 53;
                    hashLong = H0.f5772d.getInt(obj, j7);
                    i7 = hashLong + i2;
                    break;
                case 13:
                    i2 = i7 * 53;
                    hashLong = H0.f5772d.getInt(obj, j7);
                    i7 = hashLong + i2;
                    break;
                case 14:
                    i2 = i7 * 53;
                    hashLong = I.hashLong(H0.f5772d.getLong(obj, j7));
                    i7 = hashLong + i2;
                    break;
                case 15:
                    i2 = i7 * 53;
                    hashLong = H0.f5772d.getInt(obj, j7);
                    i7 = hashLong + i2;
                    break;
                case 16:
                    i2 = i7 * 53;
                    hashLong = I.hashLong(H0.f5772d.getLong(obj, j7));
                    i7 = hashLong + i2;
                    break;
                case 17:
                    Object object2 = H0.f5772d.getObject(obj, j7);
                    if (object2 != null) {
                        i10 = object2.hashCode();
                    }
                    i7 = (i7 * 53) + i10;
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case LangUtils.HASH_OFFSET /* 37 */:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case 49:
                    i2 = i7 * 53;
                    hashLong = H0.f5772d.getObject(obj, j7).hashCode();
                    i7 = hashLong + i2;
                    break;
                case DefaultRenderersFactory.MAX_DROPPED_VIDEO_FRAME_COUNT_TO_NOTIFY /* 50 */:
                    i2 = i7 * 53;
                    hashLong = H0.f5772d.getObject(obj, j7).hashCode();
                    i7 = hashLong + i2;
                    break;
                case 51:
                    if (i(obj, i9, i8)) {
                        i2 = i7 * 53;
                        hashLong = I.hashLong(Double.doubleToLongBits(((Double) H0.f5772d.getObject(obj, j7)).doubleValue()));
                        i7 = hashLong + i2;
                        break;
                    } else {
                        break;
                    }
                case 52:
                    if (i(obj, i9, i8)) {
                        i2 = i7 * 53;
                        hashLong = Float.floatToIntBits(((Float) H0.f5772d.getObject(obj, j7)).floatValue());
                        i7 = hashLong + i2;
                        break;
                    } else {
                        break;
                    }
                case 53:
                    if (i(obj, i9, i8)) {
                        i2 = i7 * 53;
                        hashLong = I.hashLong(r(j7, obj));
                        i7 = hashLong + i2;
                        break;
                    } else {
                        break;
                    }
                case 54:
                    if (i(obj, i9, i8)) {
                        i2 = i7 * 53;
                        hashLong = I.hashLong(r(j7, obj));
                        i7 = hashLong + i2;
                        break;
                    } else {
                        break;
                    }
                case 55:
                    if (i(obj, i9, i8)) {
                        i2 = i7 * 53;
                        hashLong = q(j7, obj);
                        i7 = hashLong + i2;
                        break;
                    } else {
                        break;
                    }
                case 56:
                    if (i(obj, i9, i8)) {
                        i2 = i7 * 53;
                        hashLong = I.hashLong(r(j7, obj));
                        i7 = hashLong + i2;
                        break;
                    } else {
                        break;
                    }
                case 57:
                    if (i(obj, i9, i8)) {
                        i2 = i7 * 53;
                        hashLong = q(j7, obj);
                        i7 = hashLong + i2;
                        break;
                    } else {
                        break;
                    }
                case 58:
                    if (i(obj, i9, i8)) {
                        i2 = i7 * 53;
                        hashLong = I.hashBoolean(((Boolean) H0.f5772d.getObject(obj, j7)).booleanValue());
                        i7 = hashLong + i2;
                        break;
                    } else {
                        break;
                    }
                case 59:
                    if (i(obj, i9, i8)) {
                        i2 = i7 * 53;
                        hashLong = ((String) H0.f5772d.getObject(obj, j7)).hashCode();
                        i7 = hashLong + i2;
                        break;
                    } else {
                        break;
                    }
                case CacheConfig.DEFAULT_ASYNCHRONOUS_WORKER_IDLE_LIFETIME_SECS /* 60 */:
                    if (i(obj, i9, i8)) {
                        i2 = i7 * 53;
                        hashLong = H0.f5772d.getObject(obj, j7).hashCode();
                        i7 = hashLong + i2;
                        break;
                    } else {
                        break;
                    }
                case 61:
                    if (i(obj, i9, i8)) {
                        i2 = i7 * 53;
                        hashLong = H0.f5772d.getObject(obj, j7).hashCode();
                        i7 = hashLong + i2;
                        break;
                    } else {
                        break;
                    }
                case 62:
                    if (i(obj, i9, i8)) {
                        i2 = i7 * 53;
                        hashLong = q(j7, obj);
                        i7 = hashLong + i2;
                        break;
                    } else {
                        break;
                    }
                case 63:
                    if (i(obj, i9, i8)) {
                        i2 = i7 * 53;
                        hashLong = q(j7, obj);
                        i7 = hashLong + i2;
                        break;
                    } else {
                        break;
                    }
                case 64:
                    if (i(obj, i9, i8)) {
                        i2 = i7 * 53;
                        hashLong = q(j7, obj);
                        i7 = hashLong + i2;
                        break;
                    } else {
                        break;
                    }
                case 65:
                    if (i(obj, i9, i8)) {
                        i2 = i7 * 53;
                        hashLong = I.hashLong(r(j7, obj));
                        i7 = hashLong + i2;
                        break;
                    } else {
                        break;
                    }
                case 66:
                    if (i(obj, i9, i8)) {
                        i2 = i7 * 53;
                        hashLong = q(j7, obj);
                        i7 = hashLong + i2;
                        break;
                    } else {
                        break;
                    }
                case 67:
                    if (i(obj, i9, i8)) {
                        i2 = i7 * 53;
                        hashLong = I.hashLong(r(j7, obj));
                        i7 = hashLong + i2;
                        break;
                    } else {
                        break;
                    }
                case 68:
                    if (i(obj, i9, i8)) {
                        i2 = i7 * 53;
                        hashLong = H0.f5772d.getObject(obj, j7).hashCode();
                        i7 = hashLong + i2;
                        break;
                    } else {
                        break;
                    }
            }
        }
        ((y0) this.f5851m).getClass();
        return ((F) obj).unknownFields.hashCode() + (i7 * 53);
    }

    public final boolean i(Object obj, int i2, int i7) {
        return H0.f5772d.getInt(obj, (long) (this.f5839a[i7 + 2] & 1048575)) == i2;
    }

    @Override // androidx.datastore.preferences.protobuf.InterfaceC0428l0
    public final boolean isInitialized(Object obj) {
        int i2;
        int i7 = -1;
        int i8 = 0;
        int i9 = 0;
        loop0: while (true) {
            boolean z6 = true;
            if (i8 >= this.f5847i) {
                return true;
            }
            int i10 = this.f5846h[i8];
            int[] iArr = this.f5839a;
            int i11 = iArr[i10];
            int B6 = B(i10);
            boolean z7 = this.f5845g;
            if (z7) {
                i2 = 0;
            } else {
                int i12 = iArr[i10 + 2];
                int i13 = i12 & 1048575;
                i2 = 1 << (i12 >>> 20);
                if (i13 != i7) {
                    i9 = f5838p.getInt(obj, i13);
                    i7 = i13;
                }
            }
            if ((268435456 & B6) != 0) {
                if (!(z7 ? h(i10, obj) : (i9 & i2) != 0)) {
                    break;
                }
            }
            int A6 = A(B6);
            if (A6 == 9 || A6 == 17) {
                if (z7) {
                    z6 = h(i10, obj);
                } else if ((i2 & i9) == 0) {
                    z6 = false;
                }
                if (z6) {
                    if (!e(i10).isInitialized(H0.f5772d.getObject(obj, B6 & 1048575))) {
                        break;
                    }
                } else {
                    continue;
                }
                i8++;
            } else {
                if (A6 != 27) {
                    if (A6 == 60 || A6 == 68) {
                        if (i(obj, i11, i10)) {
                            if (!e(i10).isInitialized(H0.f5772d.getObject(obj, B6 & 1048575))) {
                                break;
                            }
                        } else {
                            continue;
                        }
                        i8++;
                    } else if (A6 != 49) {
                        if (A6 == 50) {
                            Object object = H0.f5772d.getObject(obj, B6 & 1048575);
                            V v6 = this.f5852n;
                            Map<?, ?> forMapData = v6.forMapData(object);
                            if (!forMapData.isEmpty() && v6.forMapMetadata(d(i10)).f5810c.getJavaType() == WireFormat$JavaType.MESSAGE) {
                                InterfaceC0428l0 interfaceC0428l0 = null;
                                for (Object obj2 : forMapData.values()) {
                                    if (interfaceC0428l0 == null) {
                                        interfaceC0428l0 = C0420h0.getInstance().schemaFor((Class) obj2.getClass());
                                    }
                                    if (!interfaceC0428l0.isInitialized(obj2)) {
                                        break loop0;
                                    }
                                }
                            }
                        } else {
                            continue;
                        }
                        i8++;
                    }
                }
                List list = (List) H0.f5772d.getObject(obj, B6 & 1048575);
                if (list.isEmpty()) {
                    continue;
                } else {
                    InterfaceC0428l0 e3 = e(i10);
                    for (int i14 = 0; i14 < list.size(); i14++) {
                        if (!e3.isInitialized(list.get(i14))) {
                            break loop0;
                        }
                    }
                }
                i8++;
            }
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:193:0x0067, code lost:
    
        if (r12 != null) goto L11;
     */
    /* JADX WARN: Removed duplicated region for block: B:60:0x05f7 A[Catch: all -> 0x043f, TryCatch #12 {all -> 0x043f, blocks: (B:58:0x05f2, B:60:0x05f7, B:62:0x0602, B:64:0x0609, B:114:0x0388, B:117:0x038d, B:118:0x039e, B:119:0x03af, B:120:0x03c0, B:121:0x03d1, B:122:0x03e2, B:123:0x03f3, B:124:0x0404, B:125:0x0415, B:127:0x0420, B:128:0x0442, B:129:0x0456, B:130:0x046b, B:131:0x0480, B:132:0x0495, B:133:0x04aa, B:134:0x04c2, B:135:0x04d7, B:136:0x04ec, B:138:0x04f7, B:139:0x0516, B:140:0x052a, B:141:0x0537, B:142:0x054e, B:143:0x0563, B:144:0x0578, B:145:0x058d, B:146:0x05a2, B:147:0x05b7, B:148:0x05cd, B:156:0x05e3), top: B:57:0x05f2 }] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x060f A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0628 A[LOOP:3: B:78:0x0626->B:79:0x0628, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0632  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void k(androidx.datastore.preferences.protobuf.w0 r17, java.lang.Object r18, androidx.datastore.preferences.protobuf.InterfaceC0426k0 r19, androidx.datastore.preferences.protobuf.C0438w r20) {
        /*
            Method dump skipped, instructions count: 1740
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.preferences.protobuf.C0408b0.k(androidx.datastore.preferences.protobuf.w0, java.lang.Object, androidx.datastore.preferences.protobuf.k0, androidx.datastore.preferences.protobuf.w):void");
    }

    public final void l(Object obj, int i2, Object obj2, C0438w c0438w, InterfaceC0426k0 interfaceC0426k0) {
        long B6 = B(i2) & 1048575;
        Object object = H0.f5772d.getObject(obj, B6);
        V v6 = this.f5852n;
        if (object == null) {
            object = v6.newMapField(obj2);
            H0.o(obj, B6, object);
        } else if (v6.isImmutable(object)) {
            Object newMapField = v6.newMapField(obj2);
            v6.mergeFrom(newMapField, object);
            H0.o(obj, B6, newMapField);
            object = newMapField;
        }
        interfaceC0426k0.readMap(v6.forMutableMapData(object), v6.forMapMetadata(obj2), c0438w);
    }

    public final void m(int i2, Object obj, Object obj2) {
        long B6 = B(i2) & 1048575;
        if (h(i2, obj2)) {
            G0 g02 = H0.f5772d;
            Object object = g02.getObject(obj, B6);
            Object object2 = g02.getObject(obj2, B6);
            if (object != null && object2 != null) {
                H0.o(obj, B6, I.b(object, object2));
                y(i2, obj);
            } else if (object2 != null) {
                H0.o(obj, B6, object2);
                y(i2, obj);
            }
        }
    }

    @Override // androidx.datastore.preferences.protobuf.InterfaceC0428l0
    public void makeImmutable(Object obj) {
        int[] iArr;
        int i2;
        int i7 = this.f5847i;
        while (true) {
            iArr = this.f5846h;
            i2 = this.f5848j;
            if (i7 >= i2) {
                break;
            }
            long B6 = B(iArr[i7]) & 1048575;
            Object object = H0.f5772d.getObject(obj, B6);
            if (object != null) {
                H0.o(obj, B6, this.f5852n.toImmutable(object));
            }
            i7++;
        }
        int length = iArr.length;
        while (i2 < length) {
            this.f5850l.a(iArr[i2], obj);
            i2++;
        }
        ((y0) this.f5851m).getClass();
        ((F) obj).unknownFields.makeImmutable();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // androidx.datastore.preferences.protobuf.InterfaceC0428l0
    public void mergeFrom(Object obj, Object obj2) {
        Object obj3;
        obj2.getClass();
        int i2 = 0;
        while (true) {
            int[] iArr = this.f5839a;
            if (i2 >= iArr.length) {
                Object obj4 = obj;
                if (this.f5845g) {
                    return;
                }
                n0.x(this.f5851m, obj4, obj2);
                return;
            }
            int B6 = B(i2);
            long j7 = 1048575 & B6;
            int i7 = iArr[i2];
            switch (A(B6)) {
                case 0:
                    if (h(i2, obj2)) {
                        G0 g02 = H0.f5772d;
                        obj3 = obj;
                        g02.putDouble(obj3, j7, g02.getDouble(obj2, j7));
                        y(i2, obj3);
                        break;
                    }
                    obj3 = obj;
                    break;
                case 1:
                    if (h(i2, obj2)) {
                        G0 g03 = H0.f5772d;
                        g03.putFloat(obj, j7, g03.getFloat(obj2, j7));
                        y(i2, obj);
                    }
                    obj3 = obj;
                    break;
                case 2:
                    if (h(i2, obj2)) {
                        H0.n(obj, j7, H0.f5772d.getLong(obj2, j7));
                        y(i2, obj);
                    }
                    obj3 = obj;
                    break;
                case 3:
                    if (h(i2, obj2)) {
                        H0.n(obj, j7, H0.f5772d.getLong(obj2, j7));
                        y(i2, obj);
                    }
                    obj3 = obj;
                    break;
                case 4:
                    if (h(i2, obj2)) {
                        H0.m(obj, j7, H0.f5772d.getInt(obj2, j7));
                        y(i2, obj);
                    }
                    obj3 = obj;
                    break;
                case 5:
                    if (h(i2, obj2)) {
                        H0.n(obj, j7, H0.f5772d.getLong(obj2, j7));
                        y(i2, obj);
                    }
                    obj3 = obj;
                    break;
                case 6:
                    if (h(i2, obj2)) {
                        H0.m(obj, j7, H0.f5772d.getInt(obj2, j7));
                        y(i2, obj);
                    }
                    obj3 = obj;
                    break;
                case 7:
                    if (h(i2, obj2)) {
                        G0 g04 = H0.f5772d;
                        g04.putBoolean(obj, j7, g04.getBoolean(obj2, j7));
                        y(i2, obj);
                    }
                    obj3 = obj;
                    break;
                case 8:
                    if (h(i2, obj2)) {
                        H0.o(obj, j7, H0.f5772d.getObject(obj2, j7));
                        y(i2, obj);
                    }
                    obj3 = obj;
                    break;
                case 9:
                    m(i2, obj, obj2);
                    obj3 = obj;
                    break;
                case 10:
                    if (h(i2, obj2)) {
                        H0.o(obj, j7, H0.f5772d.getObject(obj2, j7));
                        y(i2, obj);
                    }
                    obj3 = obj;
                    break;
                case 11:
                    if (h(i2, obj2)) {
                        H0.m(obj, j7, H0.f5772d.getInt(obj2, j7));
                        y(i2, obj);
                    }
                    obj3 = obj;
                    break;
                case 12:
                    if (h(i2, obj2)) {
                        H0.m(obj, j7, H0.f5772d.getInt(obj2, j7));
                        y(i2, obj);
                    }
                    obj3 = obj;
                    break;
                case 13:
                    if (h(i2, obj2)) {
                        H0.m(obj, j7, H0.f5772d.getInt(obj2, j7));
                        y(i2, obj);
                    }
                    obj3 = obj;
                    break;
                case 14:
                    if (h(i2, obj2)) {
                        H0.n(obj, j7, H0.f5772d.getLong(obj2, j7));
                        y(i2, obj);
                    }
                    obj3 = obj;
                    break;
                case 15:
                    if (h(i2, obj2)) {
                        H0.m(obj, j7, H0.f5772d.getInt(obj2, j7));
                        y(i2, obj);
                    }
                    obj3 = obj;
                    break;
                case 16:
                    if (h(i2, obj2)) {
                        H0.n(obj, j7, H0.f5772d.getLong(obj2, j7));
                        y(i2, obj);
                    }
                    obj3 = obj;
                    break;
                case 17:
                    m(i2, obj, obj2);
                    obj3 = obj;
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case LangUtils.HASH_OFFSET /* 37 */:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case 49:
                    this.f5850l.b(obj, j7, obj2);
                    obj3 = obj;
                    break;
                case DefaultRenderersFactory.MAX_DROPPED_VIDEO_FRAME_COUNT_TO_NOTIFY /* 50 */:
                    Class cls = n0.f5881a;
                    G0 g05 = H0.f5772d;
                    H0.o(obj, j7, this.f5852n.mergeFrom(g05.getObject(obj, j7), g05.getObject(obj2, j7)));
                    obj3 = obj;
                    break;
                case 51:
                case 52:
                case 53:
                case 54:
                case 55:
                case 56:
                case 57:
                case 58:
                case 59:
                    if (i(obj2, i7, i2)) {
                        H0.o(obj, j7, H0.f5772d.getObject(obj2, j7));
                        z(obj, i7, i2);
                    }
                    obj3 = obj;
                    break;
                case CacheConfig.DEFAULT_ASYNCHRONOUS_WORKER_IDLE_LIFETIME_SECS /* 60 */:
                    n(i2, obj, obj2);
                    obj3 = obj;
                    break;
                case 61:
                case 62:
                case 63:
                case 64:
                case 65:
                case 66:
                case 67:
                    if (i(obj2, i7, i2)) {
                        H0.o(obj, j7, H0.f5772d.getObject(obj2, j7));
                        z(obj, i7, i2);
                    }
                    obj3 = obj;
                    break;
                case 68:
                    n(i2, obj, obj2);
                    obj3 = obj;
                    break;
                default:
                    obj3 = obj;
                    break;
            }
            i2 += 3;
            obj = obj3;
        }
    }

    public final void n(int i2, Object obj, Object obj2) {
        int B6 = B(i2);
        int i7 = this.f5839a[i2];
        long j7 = B6 & 1048575;
        if (i(obj2, i7, i2)) {
            G0 g02 = H0.f5772d;
            Object object = g02.getObject(obj, j7);
            Object object2 = g02.getObject(obj2, j7);
            if (object != null && object2 != null) {
                H0.o(obj, j7, I.b(object, object2));
                z(obj, i7, i2);
            } else if (object2 != null) {
                H0.o(obj, j7, object2);
                z(obj, i7, i2);
            }
        }
    }

    @Override // androidx.datastore.preferences.protobuf.InterfaceC0428l0
    public Object newInstance() {
        return this.f5849k.newInstance(this.f5843e);
    }

    public final int s(int i2) {
        if (i2 >= this.f5841c && i2 <= this.f5842d) {
            int[] iArr = this.f5839a;
            int length = (iArr.length / 3) - 1;
            int i7 = 0;
            while (i7 <= length) {
                int i8 = (length + i7) >>> 1;
                int i9 = i8 * 3;
                int i10 = iArr[i9];
                if (i2 == i10) {
                    return i9;
                }
                if (i2 < i10) {
                    length = i8 - 1;
                } else {
                    i7 = i8 + 1;
                }
            }
        }
        return -1;
    }

    public final void t(Object obj, long j7, InterfaceC0426k0 interfaceC0426k0, InterfaceC0428l0 interfaceC0428l0, C0438w c0438w) {
        interfaceC0426k0.readGroupList(this.f5850l.c(j7, obj), interfaceC0428l0, c0438w);
    }

    public final void u(Object obj, int i2, InterfaceC0426k0 interfaceC0426k0, InterfaceC0428l0 interfaceC0428l0, C0438w c0438w) {
        interfaceC0426k0.readMessageList(this.f5850l.c(i2 & 1048575, obj), interfaceC0428l0, c0438w);
    }

    public final void v(Object obj, int i2, InterfaceC0426k0 interfaceC0426k0) {
        if ((536870912 & i2) != 0) {
            H0.o(obj, i2 & 1048575, interfaceC0426k0.readStringRequireUtf8());
        } else if (this.f5844f) {
            H0.o(obj, i2 & 1048575, interfaceC0426k0.readString());
        } else {
            H0.o(obj, i2 & 1048575, interfaceC0426k0.readBytes());
        }
    }

    public final void w(Object obj, int i2, InterfaceC0426k0 interfaceC0426k0) {
        boolean z6 = (536870912 & i2) != 0;
        N n7 = this.f5850l;
        if (z6) {
            interfaceC0426k0.readStringListRequireUtf8(n7.c(i2 & 1048575, obj));
        } else {
            interfaceC0426k0.readStringList(n7.c(i2 & 1048575, obj));
        }
    }

    @Override // androidx.datastore.preferences.protobuf.InterfaceC0428l0
    public void writeTo(Object obj, L0 l02) throws IOException {
        C0435t c0435t = (C0435t) l02;
        Writer$FieldOrder fieldOrder = c0435t.fieldOrder();
        Writer$FieldOrder writer$FieldOrder = Writer$FieldOrder.f5835e;
        int[] iArr = this.f5839a;
        w0 w0Var = this.f5851m;
        if (fieldOrder == writer$FieldOrder) {
            ((y0) w0Var).getClass();
            ((F) obj).unknownFields.writeTo(c0435t);
            for (int length = iArr.length - 3; length >= 0; length -= 3) {
                int B6 = B(length);
                int i2 = iArr[length];
                switch (A(B6)) {
                    case 0:
                        if (h(length, obj)) {
                            c0435t.writeDouble(i2, H0.f5772d.getDouble(obj, B6 & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 1:
                        if (h(length, obj)) {
                            c0435t.writeFloat(i2, H0.f5772d.getFloat(obj, B6 & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 2:
                        if (h(length, obj)) {
                            c0435t.writeInt64(i2, H0.f5772d.getLong(obj, B6 & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 3:
                        if (h(length, obj)) {
                            c0435t.writeUInt64(i2, H0.f5772d.getLong(obj, B6 & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 4:
                        if (h(length, obj)) {
                            c0435t.writeInt32(i2, H0.f5772d.getInt(obj, B6 & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 5:
                        if (h(length, obj)) {
                            c0435t.writeFixed64(i2, H0.f5772d.getLong(obj, B6 & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 6:
                        if (h(length, obj)) {
                            c0435t.writeFixed32(i2, H0.f5772d.getInt(obj, B6 & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 7:
                        if (h(length, obj)) {
                            c0435t.writeBool(i2, H0.f5772d.getBoolean(obj, B6 & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 8:
                        if (h(length, obj)) {
                            E(i2, H0.f5772d.getObject(obj, B6 & 1048575), c0435t);
                            break;
                        } else {
                            break;
                        }
                    case 9:
                        if (h(length, obj)) {
                            c0435t.writeMessage(i2, H0.f5772d.getObject(obj, B6 & 1048575), e(length));
                            break;
                        } else {
                            break;
                        }
                    case 10:
                        if (h(length, obj)) {
                            c0435t.writeBytes(i2, (ByteString) H0.f5772d.getObject(obj, B6 & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 11:
                        if (h(length, obj)) {
                            c0435t.writeUInt32(i2, H0.f5772d.getInt(obj, B6 & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 12:
                        if (h(length, obj)) {
                            c0435t.writeEnum(i2, H0.f5772d.getInt(obj, B6 & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 13:
                        if (h(length, obj)) {
                            c0435t.writeSFixed32(i2, H0.f5772d.getInt(obj, B6 & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 14:
                        if (h(length, obj)) {
                            c0435t.writeSFixed64(i2, H0.f5772d.getLong(obj, B6 & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 15:
                        if (h(length, obj)) {
                            c0435t.writeSInt32(i2, H0.f5772d.getInt(obj, B6 & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 16:
                        if (h(length, obj)) {
                            c0435t.writeSInt64(i2, H0.f5772d.getLong(obj, B6 & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 17:
                        if (h(length, obj)) {
                            c0435t.writeGroup(i2, H0.f5772d.getObject(obj, B6 & 1048575), e(length));
                            break;
                        } else {
                            break;
                        }
                    case 18:
                        n0.writeDoubleList(iArr[length], (List) H0.f5772d.getObject(obj, B6 & 1048575), c0435t, false);
                        break;
                    case 19:
                        n0.writeFloatList(iArr[length], (List) H0.f5772d.getObject(obj, B6 & 1048575), c0435t, false);
                        break;
                    case 20:
                        n0.writeInt64List(iArr[length], (List) H0.f5772d.getObject(obj, B6 & 1048575), c0435t, false);
                        break;
                    case 21:
                        n0.writeUInt64List(iArr[length], (List) H0.f5772d.getObject(obj, B6 & 1048575), c0435t, false);
                        break;
                    case 22:
                        n0.writeInt32List(iArr[length], (List) H0.f5772d.getObject(obj, B6 & 1048575), c0435t, false);
                        break;
                    case 23:
                        n0.writeFixed64List(iArr[length], (List) H0.f5772d.getObject(obj, B6 & 1048575), c0435t, false);
                        break;
                    case 24:
                        n0.writeFixed32List(iArr[length], (List) H0.f5772d.getObject(obj, B6 & 1048575), c0435t, false);
                        break;
                    case 25:
                        n0.writeBoolList(iArr[length], (List) H0.f5772d.getObject(obj, B6 & 1048575), c0435t, false);
                        break;
                    case 26:
                        n0.writeStringList(iArr[length], (List) H0.f5772d.getObject(obj, B6 & 1048575), c0435t);
                        break;
                    case 27:
                        n0.writeMessageList(iArr[length], (List) H0.f5772d.getObject(obj, B6 & 1048575), c0435t, e(length));
                        break;
                    case 28:
                        n0.writeBytesList(iArr[length], (List) H0.f5772d.getObject(obj, B6 & 1048575), c0435t);
                        break;
                    case 29:
                        n0.writeUInt32List(iArr[length], (List) H0.f5772d.getObject(obj, B6 & 1048575), c0435t, false);
                        break;
                    case 30:
                        n0.writeEnumList(iArr[length], (List) H0.f5772d.getObject(obj, B6 & 1048575), c0435t, false);
                        break;
                    case 31:
                        n0.writeSFixed32List(iArr[length], (List) H0.f5772d.getObject(obj, B6 & 1048575), c0435t, false);
                        break;
                    case 32:
                        n0.writeSFixed64List(iArr[length], (List) H0.f5772d.getObject(obj, B6 & 1048575), c0435t, false);
                        break;
                    case 33:
                        n0.writeSInt32List(iArr[length], (List) H0.f5772d.getObject(obj, B6 & 1048575), c0435t, false);
                        break;
                    case 34:
                        n0.writeSInt64List(iArr[length], (List) H0.f5772d.getObject(obj, B6 & 1048575), c0435t, false);
                        break;
                    case 35:
                        n0.writeDoubleList(iArr[length], (List) H0.f5772d.getObject(obj, B6 & 1048575), c0435t, true);
                        break;
                    case 36:
                        n0.writeFloatList(iArr[length], (List) H0.f5772d.getObject(obj, B6 & 1048575), c0435t, true);
                        break;
                    case LangUtils.HASH_OFFSET /* 37 */:
                        n0.writeInt64List(iArr[length], (List) H0.f5772d.getObject(obj, B6 & 1048575), c0435t, true);
                        break;
                    case 38:
                        n0.writeUInt64List(iArr[length], (List) H0.f5772d.getObject(obj, B6 & 1048575), c0435t, true);
                        break;
                    case 39:
                        n0.writeInt32List(iArr[length], (List) H0.f5772d.getObject(obj, B6 & 1048575), c0435t, true);
                        break;
                    case 40:
                        n0.writeFixed64List(iArr[length], (List) H0.f5772d.getObject(obj, B6 & 1048575), c0435t, true);
                        break;
                    case 41:
                        n0.writeFixed32List(iArr[length], (List) H0.f5772d.getObject(obj, B6 & 1048575), c0435t, true);
                        break;
                    case 42:
                        n0.writeBoolList(iArr[length], (List) H0.f5772d.getObject(obj, B6 & 1048575), c0435t, true);
                        break;
                    case 43:
                        n0.writeUInt32List(iArr[length], (List) H0.f5772d.getObject(obj, B6 & 1048575), c0435t, true);
                        break;
                    case 44:
                        n0.writeEnumList(iArr[length], (List) H0.f5772d.getObject(obj, B6 & 1048575), c0435t, true);
                        break;
                    case 45:
                        n0.writeSFixed32List(iArr[length], (List) H0.f5772d.getObject(obj, B6 & 1048575), c0435t, true);
                        break;
                    case 46:
                        n0.writeSFixed64List(iArr[length], (List) H0.f5772d.getObject(obj, B6 & 1048575), c0435t, true);
                        break;
                    case 47:
                        n0.writeSInt32List(iArr[length], (List) H0.f5772d.getObject(obj, B6 & 1048575), c0435t, true);
                        break;
                    case 48:
                        n0.writeSInt64List(iArr[length], (List) H0.f5772d.getObject(obj, B6 & 1048575), c0435t, true);
                        break;
                    case 49:
                        n0.writeGroupList(iArr[length], (List) H0.f5772d.getObject(obj, B6 & 1048575), c0435t, e(length));
                        break;
                    case DefaultRenderersFactory.MAX_DROPPED_VIDEO_FRAME_COUNT_TO_NOTIFY /* 50 */:
                        D(c0435t, i2, H0.f5772d.getObject(obj, B6 & 1048575), length);
                        break;
                    case 51:
                        if (i(obj, i2, length)) {
                            c0435t.writeDouble(i2, ((Double) H0.f5772d.getObject(obj, B6 & 1048575)).doubleValue());
                            break;
                        } else {
                            break;
                        }
                    case 52:
                        if (i(obj, i2, length)) {
                            c0435t.writeFloat(i2, ((Float) H0.f5772d.getObject(obj, B6 & 1048575)).floatValue());
                            break;
                        } else {
                            break;
                        }
                    case 53:
                        if (i(obj, i2, length)) {
                            c0435t.writeInt64(i2, r(B6 & 1048575, obj));
                            break;
                        } else {
                            break;
                        }
                    case 54:
                        if (i(obj, i2, length)) {
                            c0435t.writeUInt64(i2, r(B6 & 1048575, obj));
                            break;
                        } else {
                            break;
                        }
                    case 55:
                        if (i(obj, i2, length)) {
                            c0435t.writeInt32(i2, q(B6 & 1048575, obj));
                            break;
                        } else {
                            break;
                        }
                    case 56:
                        if (i(obj, i2, length)) {
                            c0435t.writeFixed64(i2, r(B6 & 1048575, obj));
                            break;
                        } else {
                            break;
                        }
                    case 57:
                        if (i(obj, i2, length)) {
                            c0435t.writeFixed32(i2, q(B6 & 1048575, obj));
                            break;
                        } else {
                            break;
                        }
                    case 58:
                        if (i(obj, i2, length)) {
                            c0435t.writeBool(i2, ((Boolean) H0.f5772d.getObject(obj, B6 & 1048575)).booleanValue());
                            break;
                        } else {
                            break;
                        }
                    case 59:
                        if (i(obj, i2, length)) {
                            E(i2, H0.f5772d.getObject(obj, B6 & 1048575), c0435t);
                            break;
                        } else {
                            break;
                        }
                    case CacheConfig.DEFAULT_ASYNCHRONOUS_WORKER_IDLE_LIFETIME_SECS /* 60 */:
                        if (i(obj, i2, length)) {
                            c0435t.writeMessage(i2, H0.f5772d.getObject(obj, B6 & 1048575), e(length));
                            break;
                        } else {
                            break;
                        }
                    case 61:
                        if (i(obj, i2, length)) {
                            c0435t.writeBytes(i2, (ByteString) H0.f5772d.getObject(obj, B6 & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 62:
                        if (i(obj, i2, length)) {
                            c0435t.writeUInt32(i2, q(B6 & 1048575, obj));
                            break;
                        } else {
                            break;
                        }
                    case 63:
                        if (i(obj, i2, length)) {
                            c0435t.writeEnum(i2, q(B6 & 1048575, obj));
                            break;
                        } else {
                            break;
                        }
                    case 64:
                        if (i(obj, i2, length)) {
                            c0435t.writeSFixed32(i2, q(B6 & 1048575, obj));
                            break;
                        } else {
                            break;
                        }
                    case 65:
                        if (i(obj, i2, length)) {
                            c0435t.writeSFixed64(i2, r(B6 & 1048575, obj));
                            break;
                        } else {
                            break;
                        }
                    case 66:
                        if (i(obj, i2, length)) {
                            c0435t.writeSInt32(i2, q(B6 & 1048575, obj));
                            break;
                        } else {
                            break;
                        }
                    case 67:
                        if (i(obj, i2, length)) {
                            c0435t.writeSInt64(i2, r(B6 & 1048575, obj));
                            break;
                        } else {
                            break;
                        }
                    case 68:
                        if (i(obj, i2, length)) {
                            c0435t.writeGroup(i2, H0.f5772d.getObject(obj, B6 & 1048575), e(length));
                            break;
                        } else {
                            break;
                        }
                }
            }
            return;
        }
        if (!this.f5845g) {
            C(obj, c0435t);
            return;
        }
        int length2 = iArr.length;
        for (int i7 = 0; i7 < length2; i7 += 3) {
            int B7 = B(i7);
            int i8 = iArr[i7];
            switch (A(B7)) {
                case 0:
                    if (h(i7, obj)) {
                        c0435t.writeDouble(i8, H0.f5772d.getDouble(obj, B7 & 1048575));
                        break;
                    } else {
                        break;
                    }
                case 1:
                    if (h(i7, obj)) {
                        c0435t.writeFloat(i8, H0.f5772d.getFloat(obj, B7 & 1048575));
                        break;
                    } else {
                        break;
                    }
                case 2:
                    if (h(i7, obj)) {
                        c0435t.writeInt64(i8, H0.f5772d.getLong(obj, B7 & 1048575));
                        break;
                    } else {
                        break;
                    }
                case 3:
                    if (h(i7, obj)) {
                        c0435t.writeUInt64(i8, H0.f5772d.getLong(obj, B7 & 1048575));
                        break;
                    } else {
                        break;
                    }
                case 4:
                    if (h(i7, obj)) {
                        c0435t.writeInt32(i8, H0.f5772d.getInt(obj, B7 & 1048575));
                        break;
                    } else {
                        break;
                    }
                case 5:
                    if (h(i7, obj)) {
                        c0435t.writeFixed64(i8, H0.f5772d.getLong(obj, B7 & 1048575));
                        break;
                    } else {
                        break;
                    }
                case 6:
                    if (h(i7, obj)) {
                        c0435t.writeFixed32(i8, H0.f5772d.getInt(obj, B7 & 1048575));
                        break;
                    } else {
                        break;
                    }
                case 7:
                    if (h(i7, obj)) {
                        c0435t.writeBool(i8, H0.f5772d.getBoolean(obj, B7 & 1048575));
                        break;
                    } else {
                        break;
                    }
                case 8:
                    if (h(i7, obj)) {
                        E(i8, H0.f5772d.getObject(obj, B7 & 1048575), c0435t);
                        break;
                    } else {
                        break;
                    }
                case 9:
                    if (h(i7, obj)) {
                        c0435t.writeMessage(i8, H0.f5772d.getObject(obj, B7 & 1048575), e(i7));
                        break;
                    } else {
                        break;
                    }
                case 10:
                    if (h(i7, obj)) {
                        c0435t.writeBytes(i8, (ByteString) H0.f5772d.getObject(obj, B7 & 1048575));
                        break;
                    } else {
                        break;
                    }
                case 11:
                    if (h(i7, obj)) {
                        c0435t.writeUInt32(i8, H0.f5772d.getInt(obj, B7 & 1048575));
                        break;
                    } else {
                        break;
                    }
                case 12:
                    if (h(i7, obj)) {
                        c0435t.writeEnum(i8, H0.f5772d.getInt(obj, B7 & 1048575));
                        break;
                    } else {
                        break;
                    }
                case 13:
                    if (h(i7, obj)) {
                        c0435t.writeSFixed32(i8, H0.f5772d.getInt(obj, B7 & 1048575));
                        break;
                    } else {
                        break;
                    }
                case 14:
                    if (h(i7, obj)) {
                        c0435t.writeSFixed64(i8, H0.f5772d.getLong(obj, B7 & 1048575));
                        break;
                    } else {
                        break;
                    }
                case 15:
                    if (h(i7, obj)) {
                        c0435t.writeSInt32(i8, H0.f5772d.getInt(obj, B7 & 1048575));
                        break;
                    } else {
                        break;
                    }
                case 16:
                    if (h(i7, obj)) {
                        c0435t.writeSInt64(i8, H0.f5772d.getLong(obj, B7 & 1048575));
                        break;
                    } else {
                        break;
                    }
                case 17:
                    if (h(i7, obj)) {
                        c0435t.writeGroup(i8, H0.f5772d.getObject(obj, B7 & 1048575), e(i7));
                        break;
                    } else {
                        break;
                    }
                case 18:
                    n0.writeDoubleList(iArr[i7], (List) H0.f5772d.getObject(obj, B7 & 1048575), c0435t, false);
                    break;
                case 19:
                    n0.writeFloatList(iArr[i7], (List) H0.f5772d.getObject(obj, B7 & 1048575), c0435t, false);
                    break;
                case 20:
                    n0.writeInt64List(iArr[i7], (List) H0.f5772d.getObject(obj, B7 & 1048575), c0435t, false);
                    break;
                case 21:
                    n0.writeUInt64List(iArr[i7], (List) H0.f5772d.getObject(obj, B7 & 1048575), c0435t, false);
                    break;
                case 22:
                    n0.writeInt32List(iArr[i7], (List) H0.f5772d.getObject(obj, B7 & 1048575), c0435t, false);
                    break;
                case 23:
                    n0.writeFixed64List(iArr[i7], (List) H0.f5772d.getObject(obj, B7 & 1048575), c0435t, false);
                    break;
                case 24:
                    n0.writeFixed32List(iArr[i7], (List) H0.f5772d.getObject(obj, B7 & 1048575), c0435t, false);
                    break;
                case 25:
                    n0.writeBoolList(iArr[i7], (List) H0.f5772d.getObject(obj, B7 & 1048575), c0435t, false);
                    break;
                case 26:
                    n0.writeStringList(iArr[i7], (List) H0.f5772d.getObject(obj, B7 & 1048575), c0435t);
                    break;
                case 27:
                    n0.writeMessageList(iArr[i7], (List) H0.f5772d.getObject(obj, B7 & 1048575), c0435t, e(i7));
                    break;
                case 28:
                    n0.writeBytesList(iArr[i7], (List) H0.f5772d.getObject(obj, B7 & 1048575), c0435t);
                    break;
                case 29:
                    n0.writeUInt32List(iArr[i7], (List) H0.f5772d.getObject(obj, B7 & 1048575), c0435t, false);
                    break;
                case 30:
                    n0.writeEnumList(iArr[i7], (List) H0.f5772d.getObject(obj, B7 & 1048575), c0435t, false);
                    break;
                case 31:
                    n0.writeSFixed32List(iArr[i7], (List) H0.f5772d.getObject(obj, B7 & 1048575), c0435t, false);
                    break;
                case 32:
                    n0.writeSFixed64List(iArr[i7], (List) H0.f5772d.getObject(obj, B7 & 1048575), c0435t, false);
                    break;
                case 33:
                    n0.writeSInt32List(iArr[i7], (List) H0.f5772d.getObject(obj, B7 & 1048575), c0435t, false);
                    break;
                case 34:
                    n0.writeSInt64List(iArr[i7], (List) H0.f5772d.getObject(obj, B7 & 1048575), c0435t, false);
                    break;
                case 35:
                    n0.writeDoubleList(iArr[i7], (List) H0.f5772d.getObject(obj, B7 & 1048575), c0435t, true);
                    break;
                case 36:
                    n0.writeFloatList(iArr[i7], (List) H0.f5772d.getObject(obj, B7 & 1048575), c0435t, true);
                    break;
                case LangUtils.HASH_OFFSET /* 37 */:
                    n0.writeInt64List(iArr[i7], (List) H0.f5772d.getObject(obj, B7 & 1048575), c0435t, true);
                    break;
                case 38:
                    n0.writeUInt64List(iArr[i7], (List) H0.f5772d.getObject(obj, B7 & 1048575), c0435t, true);
                    break;
                case 39:
                    n0.writeInt32List(iArr[i7], (List) H0.f5772d.getObject(obj, B7 & 1048575), c0435t, true);
                    break;
                case 40:
                    n0.writeFixed64List(iArr[i7], (List) H0.f5772d.getObject(obj, B7 & 1048575), c0435t, true);
                    break;
                case 41:
                    n0.writeFixed32List(iArr[i7], (List) H0.f5772d.getObject(obj, B7 & 1048575), c0435t, true);
                    break;
                case 42:
                    n0.writeBoolList(iArr[i7], (List) H0.f5772d.getObject(obj, B7 & 1048575), c0435t, true);
                    break;
                case 43:
                    n0.writeUInt32List(iArr[i7], (List) H0.f5772d.getObject(obj, B7 & 1048575), c0435t, true);
                    break;
                case 44:
                    n0.writeEnumList(iArr[i7], (List) H0.f5772d.getObject(obj, B7 & 1048575), c0435t, true);
                    break;
                case 45:
                    n0.writeSFixed32List(iArr[i7], (List) H0.f5772d.getObject(obj, B7 & 1048575), c0435t, true);
                    break;
                case 46:
                    n0.writeSFixed64List(iArr[i7], (List) H0.f5772d.getObject(obj, B7 & 1048575), c0435t, true);
                    break;
                case 47:
                    n0.writeSInt32List(iArr[i7], (List) H0.f5772d.getObject(obj, B7 & 1048575), c0435t, true);
                    break;
                case 48:
                    n0.writeSInt64List(iArr[i7], (List) H0.f5772d.getObject(obj, B7 & 1048575), c0435t, true);
                    break;
                case 49:
                    n0.writeGroupList(iArr[i7], (List) H0.f5772d.getObject(obj, B7 & 1048575), c0435t, e(i7));
                    break;
                case DefaultRenderersFactory.MAX_DROPPED_VIDEO_FRAME_COUNT_TO_NOTIFY /* 50 */:
                    D(c0435t, i8, H0.f5772d.getObject(obj, B7 & 1048575), i7);
                    break;
                case 51:
                    if (i(obj, i8, i7)) {
                        c0435t.writeDouble(i8, ((Double) H0.f5772d.getObject(obj, B7 & 1048575)).doubleValue());
                        break;
                    } else {
                        break;
                    }
                case 52:
                    if (i(obj, i8, i7)) {
                        c0435t.writeFloat(i8, ((Float) H0.f5772d.getObject(obj, B7 & 1048575)).floatValue());
                        break;
                    } else {
                        break;
                    }
                case 53:
                    if (i(obj, i8, i7)) {
                        c0435t.writeInt64(i8, r(B7 & 1048575, obj));
                        break;
                    } else {
                        break;
                    }
                case 54:
                    if (i(obj, i8, i7)) {
                        c0435t.writeUInt64(i8, r(B7 & 1048575, obj));
                        break;
                    } else {
                        break;
                    }
                case 55:
                    if (i(obj, i8, i7)) {
                        c0435t.writeInt32(i8, q(B7 & 1048575, obj));
                        break;
                    } else {
                        break;
                    }
                case 56:
                    if (i(obj, i8, i7)) {
                        c0435t.writeFixed64(i8, r(B7 & 1048575, obj));
                        break;
                    } else {
                        break;
                    }
                case 57:
                    if (i(obj, i8, i7)) {
                        c0435t.writeFixed32(i8, q(B7 & 1048575, obj));
                        break;
                    } else {
                        break;
                    }
                case 58:
                    if (i(obj, i8, i7)) {
                        c0435t.writeBool(i8, ((Boolean) H0.f5772d.getObject(obj, B7 & 1048575)).booleanValue());
                        break;
                    } else {
                        break;
                    }
                case 59:
                    if (i(obj, i8, i7)) {
                        E(i8, H0.f5772d.getObject(obj, B7 & 1048575), c0435t);
                        break;
                    } else {
                        break;
                    }
                case CacheConfig.DEFAULT_ASYNCHRONOUS_WORKER_IDLE_LIFETIME_SECS /* 60 */:
                    if (i(obj, i8, i7)) {
                        c0435t.writeMessage(i8, H0.f5772d.getObject(obj, B7 & 1048575), e(i7));
                        break;
                    } else {
                        break;
                    }
                case 61:
                    if (i(obj, i8, i7)) {
                        c0435t.writeBytes(i8, (ByteString) H0.f5772d.getObject(obj, B7 & 1048575));
                        break;
                    } else {
                        break;
                    }
                case 62:
                    if (i(obj, i8, i7)) {
                        c0435t.writeUInt32(i8, q(B7 & 1048575, obj));
                        break;
                    } else {
                        break;
                    }
                case 63:
                    if (i(obj, i8, i7)) {
                        c0435t.writeEnum(i8, q(B7 & 1048575, obj));
                        break;
                    } else {
                        break;
                    }
                case 64:
                    if (i(obj, i8, i7)) {
                        c0435t.writeSFixed32(i8, q(B7 & 1048575, obj));
                        break;
                    } else {
                        break;
                    }
                case 65:
                    if (i(obj, i8, i7)) {
                        c0435t.writeSFixed64(i8, r(B7 & 1048575, obj));
                        break;
                    } else {
                        break;
                    }
                case 66:
                    if (i(obj, i8, i7)) {
                        c0435t.writeSInt32(i8, q(B7 & 1048575, obj));
                        break;
                    } else {
                        break;
                    }
                case 67:
                    if (i(obj, i8, i7)) {
                        c0435t.writeSInt64(i8, r(B7 & 1048575, obj));
                        break;
                    } else {
                        break;
                    }
                case 68:
                    if (i(obj, i8, i7)) {
                        c0435t.writeGroup(i8, H0.f5772d.getObject(obj, B7 & 1048575), e(i7));
                        break;
                    } else {
                        break;
                    }
            }
        }
        ((y0) w0Var).getClass();
        ((F) obj).unknownFields.writeTo(c0435t);
    }

    public final void y(int i2, Object obj) {
        if (this.f5845g) {
            return;
        }
        int i7 = this.f5839a[i2 + 2];
        long j7 = i7 & 1048575;
        H0.m(obj, j7, H0.f5772d.getInt(obj, j7) | (1 << (i7 >>> 20)));
    }

    public final void z(Object obj, int i2, int i7) {
        H0.m(obj, this.f5839a[i7 + 2] & 1048575, i2);
    }

    @Override // androidx.datastore.preferences.protobuf.InterfaceC0428l0
    public void mergeFrom(Object obj, InterfaceC0426k0 interfaceC0426k0, C0438w c0438w) throws IOException {
        c0438w.getClass();
        k(this.f5851m, obj, interfaceC0426k0, c0438w);
    }
}
