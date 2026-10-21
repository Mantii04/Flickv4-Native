package S3;

import androidx.leanback.widget.W;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;

/* loaded from: classes2.dex */
public abstract class c {
    static {
        Math.log(2.0d);
    }

    public static boolean fuzzyEquals(double d7, double d8, double d9) {
        if (d9 >= FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE) {
            if (Math.copySign(d7 - d8, 1.0d) <= d9 || d7 == d8) {
                return true;
            }
            return Double.isNaN(d7) && Double.isNaN(d8);
        }
        throw new IllegalArgumentException("tolerance (" + d9 + ") must be >= 0");
    }

    public static boolean isMathematicalInteger(double d7) {
        if (W.e(d7)) {
            return d7 == FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE || 52 - Long.numberOfTrailingZeros(W.d(d7)) <= Math.getExponent(d7);
        }
        return false;
    }

    public static boolean isPowerOfTwo(double d7) {
        if (d7 > FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE && W.e(d7)) {
            long d8 = W.d(d7);
            if ((d8 & (d8 - 1)) == 0) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:26:0x006f  */
    /* JADX WARN: Removed duplicated region for block: B:28:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int log2(double r5, java.math.RoundingMode r7) {
        /*
            r0 = 0
            int r0 = (r5 > r0 ? 1 : (r5 == r0 ? 0 : -1))
            r1 = 0
            r2 = 1
            if (r0 <= 0) goto L10
            boolean r0 = androidx.leanback.widget.W.e(r5)
            if (r0 == 0) goto L10
            r0 = r2
            goto L11
        L10:
            r0 = r1
        L11:
            java.lang.String r3 = "x must be positive and finite"
            P3.v.checkArgument(r0, r3)
            int r0 = java.lang.Math.getExponent(r5)
            int r3 = java.lang.Math.getExponent(r5)
            r4 = -1022(0xfffffffffffffc02, float:NaN)
            if (r3 < r4) goto L71
            int[] r3 = S3.b.f3377a
            int r7 = r7.ordinal()
            r7 = r3[r7]
            switch(r7) {
                case 1: goto L66;
                case 2: goto L6d;
                case 3: goto L5f;
                case 4: goto L57;
                case 5: goto L4d;
                case 6: goto L33;
                case 7: goto L33;
                case 8: goto L33;
                default: goto L2d;
            }
        L2d:
            java.lang.AssertionError r5 = new java.lang.AssertionError
            r5.<init>()
            throw r5
        L33:
            long r5 = java.lang.Double.doubleToRawLongBits(r5)
            r3 = 4503599627370495(0xfffffffffffff, double:2.225073858507201E-308)
            long r5 = r5 & r3
            r3 = 4607182418800017408(0x3ff0000000000000, double:1.0)
            long r5 = r5 | r3
            double r5 = java.lang.Double.longBitsToDouble(r5)
            double r5 = r5 * r5
            r3 = 4611686018427387904(0x4000000000000000, double:2.0)
            int r5 = (r5 > r3 ? 1 : (r5 == r3 ? 0 : -1))
            if (r5 <= 0) goto L6d
            r1 = r2
            goto L6d
        L4d:
            if (r0 < 0) goto L50
            r1 = r2
        L50:
            boolean r5 = isPowerOfTwo(r5)
        L54:
            r5 = r5 ^ r2
            r1 = r1 & r5
            goto L6d
        L57:
            if (r0 >= 0) goto L5a
            r1 = r2
        L5a:
            boolean r5 = isPowerOfTwo(r5)
            goto L54
        L5f:
            boolean r5 = isPowerOfTwo(r5)
            r1 = r5 ^ 1
            goto L6d
        L66:
            boolean r5 = isPowerOfTwo(r5)
            com.bumptech.glide.e.e(r5)
        L6d:
            if (r1 == 0) goto L70
            int r0 = r0 + r2
        L70:
            return r0
        L71:
            r0 = 4841369599423283200(0x4330000000000000, double:4.503599627370496E15)
            double r5 = r5 * r0
            int r5 = log2(r5, r7)
            int r5 = r5 + (-52)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: S3.c.log2(double, java.math.RoundingMode):int");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x002a, code lost:
    
        if (java.lang.Math.abs(r8 - r2) == 0.5d) goto L36;
     */
    /* JADX WARN: Removed duplicated region for block: B:12:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0098  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x009a  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x008c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static long roundToLong(double r8, java.math.RoundingMode r10) {
        /*
            boolean r0 = androidx.leanback.widget.W.e(r8)
            if (r0 == 0) goto Lb6
            int[] r0 = S3.b.f3377a
            int r1 = r10.ordinal()
            r0 = r0[r1]
            r1 = 1
            r2 = 1
            r4 = 0
            r6 = 4602678819172646912(0x3fe0000000000000, double:0.5)
            switch(r0) {
                case 1: goto L78;
                case 2: goto L68;
                case 3: goto L59;
                case 4: goto L76;
                case 5: goto L46;
                case 6: goto L41;
                case 7: goto L2d;
                case 8: goto L1e;
                default: goto L18;
            }
        L18:
            java.lang.AssertionError r8 = new java.lang.AssertionError
            r8.<init>()
            throw r8
        L1e:
            double r2 = java.lang.Math.rint(r8)
            double r4 = r8 - r2
            double r4 = java.lang.Math.abs(r4)
            int r0 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r0 != 0) goto L80
            goto L76
        L2d:
            double r2 = java.lang.Math.rint(r8)
            double r4 = r8 - r2
            double r4 = java.lang.Math.abs(r4)
            int r0 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r0 != 0) goto L80
            double r2 = java.lang.Math.copySign(r6, r8)
            double r2 = r2 + r8
            goto L80
        L41:
            double r2 = java.lang.Math.rint(r8)
            goto L80
        L46:
            boolean r0 = isMathematicalInteger(r8)
            if (r0 == 0) goto L4d
            goto L76
        L4d:
            long r2 = (long) r8
            int r0 = (r8 > r4 ? 1 : (r8 == r4 ? 0 : -1))
            if (r0 <= 0) goto L54
            r0 = r1
            goto L55
        L54:
            r0 = -1
        L55:
            long r4 = (long) r0
            long r2 = r2 + r4
            double r2 = (double) r2
            goto L80
        L59:
            int r0 = (r8 > r4 ? 1 : (r8 == r4 ? 0 : -1))
            if (r0 <= 0) goto L76
            boolean r0 = isMathematicalInteger(r8)
            if (r0 == 0) goto L64
            goto L76
        L64:
            long r4 = (long) r8
            long r4 = r4 + r2
        L66:
            double r2 = (double) r4
            goto L80
        L68:
            int r0 = (r8 > r4 ? 1 : (r8 == r4 ? 0 : -1))
            if (r0 >= 0) goto L76
            boolean r0 = isMathematicalInteger(r8)
            if (r0 == 0) goto L73
            goto L76
        L73:
            long r4 = (long) r8
            long r4 = r4 - r2
            goto L66
        L76:
            r2 = r8
            goto L80
        L78:
            boolean r0 = isMathematicalInteger(r8)
            com.bumptech.glide.e.e(r0)
            goto L76
        L80:
            r4 = -4332462841530417152(0xc3e0000000000000, double:-9.223372036854776E18)
            double r4 = r4 - r2
            r6 = 4607182418800017408(0x3ff0000000000000, double:1.0)
            int r0 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            r4 = 0
            if (r0 >= 0) goto L8c
            r0 = r1
            goto L8d
        L8c:
            r0 = r4
        L8d:
            r5 = 4890909195324358656(0x43e0000000000000, double:9.223372036854776E18)
            int r5 = (r2 > r5 ? 1 : (r2 == r5 ? 0 : -1))
            if (r5 >= 0) goto L94
            goto L95
        L94:
            r1 = r4
        L95:
            r0 = r0 & r1
            if (r0 == 0) goto L9a
            long r8 = (long) r2
            return r8
        L9a:
            java.lang.ArithmeticException r0 = new java.lang.ArithmeticException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            java.lang.String r2 = "rounded value is out of range for input "
            r1.<init>(r2)
            r1.append(r8)
            java.lang.String r8 = " and rounding mode "
            r1.append(r8)
            r1.append(r10)
            java.lang.String r8 = r1.toString()
            r0.<init>(r8)
            throw r0
        Lb6:
            java.lang.ArithmeticException r8 = new java.lang.ArithmeticException
            java.lang.String r9 = "input is infinite or NaN"
            r8.<init>(r9)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: S3.c.roundToLong(double, java.math.RoundingMode):long");
    }
}
