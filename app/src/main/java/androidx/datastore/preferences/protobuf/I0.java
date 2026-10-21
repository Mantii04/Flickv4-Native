package androidx.datastore.preferences.protobuf;

import androidx.media3.exoplayer.analytics.AnalyticsListener;
import com.fasterxml.jackson.core.base.GeneratorBase;
import com.google.firebase.analytics.FirebaseAnalytics;
import cz.msebera.android.httpclient.message.TokenParser;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.apache.commons.lang3.StringUtils;

/* loaded from: classes.dex */
public final class I0 {

    /* renamed from: b, reason: collision with root package name */
    public static final p0 f5779b = new p0();

    /* renamed from: c, reason: collision with root package name */
    public static final q0 f5780c = new q0();

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f5781a;

    public /* synthetic */ I0(int i2) {
        this.f5781a = i2;
    }

    public static void a(byte b7, byte b8, byte b9, byte b10, char[] cArr, int i2) {
        if (!h(b8)) {
            if ((((b8 + 112) + (b7 << 28)) >> 30) == 0 && !h(b9) && !h(b10)) {
                int i7 = ((b7 & 7) << 18) | ((b8 & 63) << 12) | ((b9 & 63) << 6) | (b10 & 63);
                cArr[i2] = (char) ((i7 >>> 10) + 55232);
                cArr[i2 + 1] = (char) ((i7 & AnalyticsListener.EVENT_DRM_KEYS_LOADED) + GeneratorBase.SURR2_FIRST);
                return;
            }
        }
        throw InvalidProtocolBufferException.a();
    }

    public static void b(byte b7, byte b8, char[] cArr, int i2) {
        if (b7 < -62 || h(b8)) {
            throw InvalidProtocolBufferException.a();
        }
        cArr[i2] = (char) (((b7 & 31) << 6) | (b8 & 63));
    }

    public static void c(byte b7, byte b8, byte b9, char[] cArr, int i2) {
        if (h(b8) || ((b7 == -32 && b8 < -96) || ((b7 == -19 && b8 >= -96) || h(b9)))) {
            throw InvalidProtocolBufferException.a();
        }
        cArr[i2] = (char) (((b7 & 15) << 12) | ((b8 & 63) << 6) | (b9 & 63));
    }

    public static final String d(String str) {
        StringBuilder sb = new StringBuilder();
        for (int i2 = 0; i2 < str.length(); i2++) {
            char charAt = str.charAt(i2);
            if (Character.isUpperCase(charAt)) {
                sb.append("_");
            }
            sb.append(Character.toLowerCase(charAt));
        }
        return sb.toString();
    }

    public static String g(ByteString byteString) {
        v0 v0Var = new v0(byteString);
        StringBuilder sb = new StringBuilder(v0Var.size());
        for (int i2 = 0; i2 < v0Var.size(); i2++) {
            byte byteAt = v0Var.byteAt(i2);
            if (byteAt == 34) {
                sb.append("\\\"");
            } else if (byteAt == 39) {
                sb.append("\\'");
            } else if (byteAt != 92) {
                switch (byteAt) {
                    case 7:
                        sb.append("\\a");
                        break;
                    case 8:
                        sb.append("\\b");
                        break;
                    case 9:
                        sb.append("\\t");
                        break;
                    case 10:
                        sb.append("\\n");
                        break;
                    case 11:
                        sb.append("\\v");
                        break;
                    case 12:
                        sb.append("\\f");
                        break;
                    case 13:
                        sb.append("\\r");
                        break;
                    default:
                        if (byteAt < 32 || byteAt > 126) {
                            sb.append(TokenParser.ESCAPE);
                            sb.append((char) (((byteAt >>> 6) & 3) + 48));
                            sb.append((char) (((byteAt >>> 3) & 7) + 48));
                            sb.append((char) ((byteAt & 7) + 48));
                            break;
                        } else {
                            sb.append((char) byteAt);
                            break;
                        }
                }
            } else {
                sb.append("\\\\");
            }
        }
        return sb.toString();
    }

    public static boolean h(byte b7) {
        return b7 > -65;
    }

    public static final void j(StringBuilder sb, int i2, String str, Object obj) {
        if (obj instanceof List) {
            Iterator it = ((List) obj).iterator();
            while (it.hasNext()) {
                j(sb, i2, str, it.next());
            }
            return;
        }
        if (obj instanceof Map) {
            Iterator it2 = ((Map) obj).entrySet().iterator();
            while (it2.hasNext()) {
                j(sb, i2, str, (Map.Entry) it2.next());
            }
            return;
        }
        sb.append('\n');
        int i7 = 0;
        for (int i8 = 0; i8 < i2; i8++) {
            sb.append(TokenParser.SP);
        }
        sb.append(str);
        if (obj instanceof String) {
            sb.append(": \"");
            sb.append(g(ByteString.copyFromUtf8((String) obj)));
            sb.append('\"');
            return;
        }
        if (obj instanceof ByteString) {
            sb.append(": \"");
            sb.append(g((ByteString) obj));
            sb.append('\"');
            return;
        }
        if (obj instanceof F) {
            sb.append(" {");
            k((F) obj, sb, i2 + 2);
            sb.append(StringUtils.LF);
            while (i7 < i2) {
                sb.append(TokenParser.SP);
                i7++;
            }
            sb.append("}");
            return;
        }
        if (!(obj instanceof Map.Entry)) {
            sb.append(": ");
            sb.append(obj.toString());
            return;
        }
        sb.append(" {");
        Map.Entry entry = (Map.Entry) obj;
        int i9 = i2 + 2;
        j(sb, i9, "key", entry.getKey());
        j(sb, i9, FirebaseAnalytics.Param.VALUE, entry.getValue());
        sb.append(StringUtils.LF);
        while (i7 < i2) {
            sb.append(TokenParser.SP);
            i7++;
        }
        sb.append("}");
    }

    /* JADX WARN: Code restructure failed: missing block: B:68:0x01ad, code lost:
    
        if (((java.lang.Integer) r11).intValue() == 0) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x01af, code lost:
    
        r7 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x01c1, code lost:
    
        if (((java.lang.Float) r11).floatValue() == 0.0f) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x01d3, code lost:
    
        if (((java.lang.Double) r11).doubleValue() == com.google.firebase.remoteconfig.FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE) goto L57;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void k(androidx.datastore.preferences.protobuf.F r18, java.lang.StringBuilder r19, int r20) {
        /*
            Method dump skipped, instructions count: 579
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.preferences.protobuf.I0.k(androidx.datastore.preferences.protobuf.F, java.lang.StringBuilder, int):void");
    }

    public static int l(long j7, byte[] bArr, int i2, int i7) {
        if (i7 == 0) {
            I0 i02 = J0.f5783a;
            if (i2 > -12) {
                return -1;
            }
            return i2;
        }
        if (i7 == 1) {
            return J0.c(i2, H0.f(j7, bArr));
        }
        if (i7 == 2) {
            return J0.d(i2, H0.f(j7, bArr), H0.f(j7 + 1, bArr));
        }
        throw new AssertionError();
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0039  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x011e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String e(int r19, byte[] r20, int r21) {
        /*
            Method dump skipped, instructions count: 438
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.preferences.protobuf.I0.e(int, byte[], int):java.lang.String");
    }

    /* JADX WARN: Code restructure failed: missing block: B:79:?, code lost:
    
        return r27 + r5;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int f(java.lang.String r25, byte[] r26, int r27, int r28) {
        /*
            Method dump skipped, instructions count: 606
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.preferences.protobuf.I0.f(java.lang.String, byte[], int, int):int");
    }

    public final int i(int i2, byte[] bArr, int i7) {
        int i8;
        long j7;
        int i9;
        int i10 = i2;
        int i11 = 2;
        switch (this.f5781a) {
            case 0:
                while (i10 < i7 && bArr[i10] >= 0) {
                    i10++;
                }
                if (i10 < i7) {
                    while (i10 < i7) {
                        int i12 = i10 + 1;
                        byte b7 = bArr[i10];
                        if (b7 < 0) {
                            if (b7 < -32) {
                                if (i12 >= i7) {
                                    return b7;
                                }
                                if (b7 >= -62) {
                                    i10 += 2;
                                    if (bArr[i12] > -65) {
                                    }
                                }
                                return -1;
                            }
                            if (b7 < -16) {
                                if (i12 >= i7 - 1) {
                                    return J0.a(i12, bArr, i7);
                                }
                                int i13 = i10 + 2;
                                byte b8 = bArr[i12];
                                if (b8 <= -65 && ((b7 != -32 || b8 >= -96) && (b7 != -19 || b8 < -96))) {
                                    i10 += 3;
                                    if (bArr[i13] > -65) {
                                    }
                                }
                            } else {
                                if (i12 >= i7 - 2) {
                                    return J0.a(i12, bArr, i7);
                                }
                                int i14 = i10 + 2;
                                byte b9 = bArr[i12];
                                if (b9 <= -65 && (((b9 + 112) + (b7 << 28)) >> 30) == 0) {
                                    int i15 = i10 + 3;
                                    if (bArr[i14] <= -65) {
                                        i10 += 4;
                                        if (bArr[i15] > -65) {
                                        }
                                    }
                                }
                            }
                            return -1;
                        }
                        i10 = i12;
                    }
                }
                return 0;
            default:
                if (((bArr.length - i7) | i10 | i7) < 0) {
                    throw new ArrayIndexOutOfBoundsException(String.format("Array length=%d, index=%d, limit=%d", Integer.valueOf(bArr.length), Integer.valueOf(i10), Integer.valueOf(i7)));
                }
                long j8 = i10;
                int i16 = (int) (i7 - j8);
                if (i16 < 16) {
                    i8 = 0;
                    j7 = 1;
                } else {
                    long j9 = j8;
                    i8 = 0;
                    j7 = 1;
                    while (true) {
                        if (i8 < i16) {
                            long j10 = j9 + 1;
                            if (H0.f(j9, bArr) >= 0) {
                                i8++;
                                j9 = j10;
                            }
                        } else {
                            i8 = i16;
                        }
                    }
                }
                int i17 = i16 - i8;
                long j11 = j8 + i8;
                while (true) {
                    byte b10 = 0;
                    while (true) {
                        if (i17 > 0) {
                            long j12 = j11 + j7;
                            b10 = H0.f(j11, bArr);
                            if (b10 >= 0) {
                                i17--;
                                j11 = j12;
                            } else {
                                j11 = j12;
                            }
                        }
                    }
                    if (i17 == 0) {
                        return 0;
                    }
                    int i18 = i17 - 1;
                    if (b10 < -32) {
                        if (i18 == 0) {
                            return b10;
                        }
                        i17 -= 2;
                        if (b10 >= -62) {
                            long j13 = j11 + j7;
                            if (H0.f(j11, bArr) <= -65) {
                                j11 = j13;
                                i9 = i11;
                            }
                        }
                    } else if (b10 < -16) {
                        if (i18 < i11) {
                            return l(j11, bArr, b10, i18);
                        }
                        i17 -= 3;
                        long j14 = j11 + j7;
                        byte f3 = H0.f(j11, bArr);
                        if (f3 <= -65 && ((b10 != -32 || f3 >= -96) && (b10 != -19 || f3 < -96))) {
                            j11 += 2;
                            if (H0.f(j14, bArr) > -65) {
                            }
                            i9 = i11;
                        }
                    } else {
                        if (i18 < 3) {
                            return l(j11, bArr, b10, i18);
                        }
                        i17 -= 4;
                        long j15 = j11 + j7;
                        byte f7 = H0.f(j11, bArr);
                        if (f7 <= -65 && (((f7 + 112) + (b10 << 28)) >> 30) == 0) {
                            i9 = i11;
                            long j16 = j11 + 2;
                            if (H0.f(j15, bArr) <= -65) {
                                j11 += 3;
                                if (H0.f(j16, bArr) > -65) {
                                }
                            }
                        }
                    }
                    i11 = i9;
                }
                return -1;
        }
    }
}
