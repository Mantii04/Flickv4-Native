package okhttp3.internal.http2;

import A.i;
import P5.p;
import cz.msebera.android.httpclient.message.TokenParser;
import kotlin.jvm.internal.j;
import okhttp3.internal.Util;
import okio.ByteString;

/* loaded from: classes2.dex */
public final class Http2 {
    private static final String[] BINARY;
    public static final int FLAG_ACK = 1;
    public static final int FLAG_COMPRESSED = 32;
    public static final int FLAG_END_HEADERS = 4;
    public static final int FLAG_END_PUSH_PROMISE = 4;
    public static final int FLAG_END_STREAM = 1;
    public static final int FLAG_NONE = 0;
    public static final int FLAG_PADDED = 8;
    public static final int FLAG_PRIORITY = 32;
    public static final int INITIAL_MAX_FRAME_SIZE = 16384;
    public static final int TYPE_CONTINUATION = 9;
    public static final int TYPE_DATA = 0;
    public static final int TYPE_GOAWAY = 7;
    public static final int TYPE_HEADERS = 1;
    public static final int TYPE_PING = 6;
    public static final int TYPE_PRIORITY = 2;
    public static final int TYPE_PUSH_PROMISE = 5;
    public static final int TYPE_RST_STREAM = 3;
    public static final int TYPE_SETTINGS = 4;
    public static final int TYPE_WINDOW_UPDATE = 8;
    public static final Http2 INSTANCE = new Http2();
    public static final ByteString CONNECTION_PREFACE = ByteString.f19159j.encodeUtf8("PRI * HTTP/2.0\r\n\r\nSM\r\n\r\n");
    private static final String[] FRAME_NAMES = {"DATA", "HEADERS", "PRIORITY", "RST_STREAM", "SETTINGS", "PUSH_PROMISE", "PING", "GOAWAY", "WINDOW_UPDATE", "CONTINUATION"};
    private static final String[] FLAGS = new String[64];

    static {
        String[] strArr = new String[256];
        for (int i2 = 0; i2 < 256; i2++) {
            String binaryString = Integer.toBinaryString(i2);
            j.checkNotNullExpressionValue(binaryString, "toBinaryString(it)");
            strArr[i2] = p.replace$default(Util.format("%8s", binaryString), TokenParser.SP, '0', false, 4, (Object) null);
        }
        BINARY = strArr;
        String[] strArr2 = FLAGS;
        strArr2[0] = "";
        strArr2[1] = "END_STREAM";
        int[] iArr = {1};
        strArr2[8] = "PADDED";
        int i7 = iArr[0];
        strArr2[i7 | 8] = i.o(new StringBuilder(), strArr2[i7], "|PADDED");
        strArr2[4] = "END_HEADERS";
        strArr2[32] = "PRIORITY";
        strArr2[36] = "END_HEADERS|PRIORITY";
        int[] iArr2 = {4, 32, 36};
        for (int i8 = 0; i8 < 3; i8++) {
            int i9 = iArr2[i8];
            int i10 = iArr[0];
            String[] strArr3 = FLAGS;
            int i11 = i10 | i9;
            strArr3[i11] = strArr3[i10] + '|' + strArr3[i9];
            StringBuilder sb = new StringBuilder();
            sb.append(strArr3[i10]);
            sb.append('|');
            strArr3[i11 | 8] = i.o(sb, strArr3[i9], "|PADDED");
        }
        int length = FLAGS.length;
        for (int i12 = 0; i12 < length; i12++) {
            String[] strArr4 = FLAGS;
            if (strArr4[i12] == null) {
                strArr4[i12] = BINARY[i12];
            }
        }
    }

    private Http2() {
    }

    public final String formatFlags(int i2, int i7) {
        String str;
        if (i7 == 0) {
            return "";
        }
        if (i2 != 2 && i2 != 3) {
            if (i2 == 4 || i2 == 6) {
                return i7 == 1 ? "ACK" : BINARY[i7];
            }
            if (i2 != 7 && i2 != 8) {
                String[] strArr = FLAGS;
                if (i7 < strArr.length) {
                    str = strArr[i7];
                    j.checkNotNull(str);
                } else {
                    str = BINARY[i7];
                }
                String str2 = str;
                return (i2 != 5 || (i7 & 4) == 0) ? (i2 != 0 || (i7 & 32) == 0) ? str2 : p.replace$default(str2, "PRIORITY", "COMPRESSED", false, 4, (Object) null) : p.replace$default(str2, "HEADERS", "PUSH_PROMISE", false, 4, (Object) null);
            }
        }
        return BINARY[i7];
    }

    public final String formattedType$okhttp(int i2) {
        String[] strArr = FRAME_NAMES;
        return i2 < strArr.length ? strArr[i2] : Util.format("0x%02x", Integer.valueOf(i2));
    }

    public final String frameLog(boolean z6, int i2, int i7, int i8, int i9) {
        return Util.format("%s 0x%08x %5d %-13s %s", z6 ? "<<" : ">>", Integer.valueOf(i2), Integer.valueOf(i7), formattedType$okhttp(i8), formatFlags(i8, i9));
    }
}
