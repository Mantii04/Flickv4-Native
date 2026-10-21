package okhttp3.internal.ws;

import A.i;
import e6.C0867i;
import kotlin.jvm.internal.j;
import okio.ByteString;

/* loaded from: classes2.dex */
public final class WebSocketProtocol {
    public static final String ACCEPT_MAGIC = "258EAFA5-E914-47DA-95CA-C5AB0DC85B11";
    public static final int B0_FLAG_FIN = 128;
    public static final int B0_FLAG_RSV1 = 64;
    public static final int B0_FLAG_RSV2 = 32;
    public static final int B0_FLAG_RSV3 = 16;
    public static final int B0_MASK_OPCODE = 15;
    public static final int B1_FLAG_MASK = 128;
    public static final int B1_MASK_LENGTH = 127;
    public static final int CLOSE_CLIENT_GOING_AWAY = 1001;
    public static final long CLOSE_MESSAGE_MAX = 123;
    public static final int CLOSE_NO_STATUS_CODE = 1005;
    public static final WebSocketProtocol INSTANCE = new WebSocketProtocol();
    public static final int OPCODE_BINARY = 2;
    public static final int OPCODE_CONTINUATION = 0;
    public static final int OPCODE_CONTROL_CLOSE = 8;
    public static final int OPCODE_CONTROL_PING = 9;
    public static final int OPCODE_CONTROL_PONG = 10;
    public static final int OPCODE_FLAG_CONTROL = 8;
    public static final int OPCODE_TEXT = 1;
    public static final long PAYLOAD_BYTE_MAX = 125;
    public static final int PAYLOAD_LONG = 127;
    public static final int PAYLOAD_SHORT = 126;
    public static final long PAYLOAD_SHORT_MAX = 65535;

    private WebSocketProtocol() {
    }

    public final String acceptHeader(String key) {
        j.checkNotNullParameter(key, "key");
        return ByteString.f19159j.encodeUtf8(key + ACCEPT_MAGIC).sha1().base64();
    }

    public final String closeCodeExceptionMessage(int i2) {
        if (i2 < 1000 || i2 >= 5000) {
            return i.f(i2, "Code must be in range [1000,5000): ");
        }
        if ((1004 > i2 || i2 >= 1007) && (1015 > i2 || i2 >= 3000)) {
            return null;
        }
        return i.g(i2, "Code ", " is reserved and may not be used.");
    }

    public final void toggleMask(C0867i cursor, byte[] key) {
        j.checkNotNullParameter(cursor, "cursor");
        j.checkNotNullParameter(key, "key");
        int length = key.length;
        int i2 = 0;
        do {
            byte[] bArr = cursor.f14014m;
            int i7 = cursor.f14015n;
            int i8 = cursor.f14016p;
            if (bArr != null) {
                while (i7 < i8) {
                    int i9 = i2 % length;
                    bArr[i7] = (byte) (bArr[i7] ^ key[i9]);
                    i7++;
                    i2 = i9 + 1;
                }
            }
        } while (cursor.next() != -1);
    }

    public final void validateCloseCode(int i2) {
        String closeCodeExceptionMessage = closeCodeExceptionMessage(i2);
        if (closeCodeExceptionMessage == null) {
            return;
        }
        j.checkNotNull(closeCodeExceptionMessage);
        throw new IllegalArgumentException(closeCodeExceptionMessage.toString());
    }
}
