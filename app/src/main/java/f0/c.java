package f0;

import com.fasterxml.jackson.core.JsonPointer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* loaded from: classes.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    public final int f14045a;

    /* renamed from: b, reason: collision with root package name */
    public final int f14046b;

    /* renamed from: c, reason: collision with root package name */
    public final long f14047c;

    /* renamed from: d, reason: collision with root package name */
    public final byte[] f14048d;

    public c(int i2, byte[] bArr, int i7) {
        this(-1L, bArr, i2, i7);
    }

    public static c createString(String str) {
        byte[] bytes = (str + (char) 0).getBytes(g.f14070P);
        return new c(2, bytes, bytes.length);
    }

    public static c createULong(long[] jArr, ByteOrder byteOrder) {
        ByteBuffer wrap = ByteBuffer.wrap(new byte[g.f14061G[4] * jArr.length]);
        wrap.order(byteOrder);
        for (long j7 : jArr) {
            wrap.putInt((int) j7);
        }
        return new c(4, wrap.array(), jArr.length);
    }

    public static c createURational(e[] eVarArr, ByteOrder byteOrder) {
        ByteBuffer wrap = ByteBuffer.wrap(new byte[g.f14061G[5] * eVarArr.length]);
        wrap.order(byteOrder);
        for (e eVar : eVarArr) {
            wrap.putInt((int) eVar.f14053a);
            wrap.putInt((int) eVar.f14054b);
        }
        return new c(5, wrap.array(), eVarArr.length);
    }

    public static c createUShort(int[] iArr, ByteOrder byteOrder) {
        ByteBuffer wrap = ByteBuffer.wrap(new byte[g.f14061G[3] * iArr.length]);
        wrap.order(byteOrder);
        for (int i2 : iArr) {
            wrap.putShort((short) i2);
        }
        return new c(3, wrap.array(), iArr.length);
    }

    /* JADX WARN: Not initialized variable reg: 6, insn: 0x002f: MOVE (r5 I:??[OBJECT, ARRAY]) = (r6 I:??[OBJECT, ARRAY]) (LINE:48), block:B:162:0x002f */
    /* JADX WARN: Removed duplicated region for block: B:165:0x0163 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r13v22, types: [int[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r13v23, types: [java.io.Serializable, long[]] */
    /* JADX WARN: Type inference failed for: r13v24, types: [f0.e[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r13v25, types: [int[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r13v26, types: [int[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r13v27, types: [f0.e[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r13v28, types: [double[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r13v29, types: [double[], java.io.Serializable] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.io.Serializable a(java.nio.ByteOrder r13) {
        /*
            Method dump skipped, instructions count: 392
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: f0.c.a(java.nio.ByteOrder):java.io.Serializable");
    }

    public double getDoubleValue(ByteOrder byteOrder) {
        Object a7 = a(byteOrder);
        if (a7 == null) {
            throw new NumberFormatException("NULL can't be converted to a double value");
        }
        if (a7 instanceof String) {
            return Double.parseDouble((String) a7);
        }
        if (a7 instanceof long[]) {
            if (((long[]) a7).length == 1) {
                return r5[0];
            }
            throw new NumberFormatException("There are more than one component");
        }
        if (a7 instanceof int[]) {
            if (((int[]) a7).length == 1) {
                return r5[0];
            }
            throw new NumberFormatException("There are more than one component");
        }
        if (a7 instanceof double[]) {
            double[] dArr = (double[]) a7;
            if (dArr.length == 1) {
                return dArr[0];
            }
            throw new NumberFormatException("There are more than one component");
        }
        if (!(a7 instanceof e[])) {
            throw new NumberFormatException("Couldn't find a double value");
        }
        e[] eVarArr = (e[]) a7;
        if (eVarArr.length == 1) {
            return eVarArr[0].calculate();
        }
        throw new NumberFormatException("There are more than one component");
    }

    public int getIntValue(ByteOrder byteOrder) {
        Object a7 = a(byteOrder);
        if (a7 == null) {
            throw new NumberFormatException("NULL can't be converted to a integer value");
        }
        if (a7 instanceof String) {
            return Integer.parseInt((String) a7);
        }
        if (a7 instanceof long[]) {
            long[] jArr = (long[]) a7;
            if (jArr.length == 1) {
                return (int) jArr[0];
            }
            throw new NumberFormatException("There are more than one component");
        }
        if (!(a7 instanceof int[])) {
            throw new NumberFormatException("Couldn't find a integer value");
        }
        int[] iArr = (int[]) a7;
        if (iArr.length == 1) {
            return iArr[0];
        }
        throw new NumberFormatException("There are more than one component");
    }

    public String getStringValue(ByteOrder byteOrder) {
        Object a7 = a(byteOrder);
        if (a7 == null) {
            return null;
        }
        if (a7 instanceof String) {
            return (String) a7;
        }
        StringBuilder sb = new StringBuilder();
        int i2 = 0;
        if (a7 instanceof long[]) {
            long[] jArr = (long[]) a7;
            while (i2 < jArr.length) {
                sb.append(jArr[i2]);
                i2++;
                if (i2 != jArr.length) {
                    sb.append(",");
                }
            }
            return sb.toString();
        }
        if (a7 instanceof int[]) {
            int[] iArr = (int[]) a7;
            while (i2 < iArr.length) {
                sb.append(iArr[i2]);
                i2++;
                if (i2 != iArr.length) {
                    sb.append(",");
                }
            }
            return sb.toString();
        }
        if (a7 instanceof double[]) {
            double[] dArr = (double[]) a7;
            while (i2 < dArr.length) {
                sb.append(dArr[i2]);
                i2++;
                if (i2 != dArr.length) {
                    sb.append(",");
                }
            }
            return sb.toString();
        }
        if (!(a7 instanceof e[])) {
            return null;
        }
        e[] eVarArr = (e[]) a7;
        while (i2 < eVarArr.length) {
            sb.append(eVarArr[i2].f14053a);
            sb.append(JsonPointer.SEPARATOR);
            sb.append(eVarArr[i2].f14054b);
            i2++;
            if (i2 != eVarArr.length) {
                sb.append(",");
            }
        }
        return sb.toString();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("(");
        sb.append(g.f14060F[this.f14045a]);
        sb.append(", data length:");
        return A.i.m(sb, this.f14048d.length, ")");
    }

    public c(long j7, byte[] bArr, int i2, int i7) {
        this.f14045a = i2;
        this.f14046b = i7;
        this.f14047c = j7;
        this.f14048d = bArr;
    }

    public static c createULong(long j7, ByteOrder byteOrder) {
        return createULong(new long[]{j7}, byteOrder);
    }

    public static c createUShort(int i2, ByteOrder byteOrder) {
        return createUShort(new int[]{i2}, byteOrder);
    }

    public static c createURational(e eVar, ByteOrder byteOrder) {
        return createURational(new e[]{eVar}, byteOrder);
    }
}
