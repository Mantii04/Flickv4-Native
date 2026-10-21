package okhttp3.internal.ws;

import P5.o;
import P5.p;
import java.io.IOException;
import kotlin.jvm.internal.g;
import kotlin.jvm.internal.j;
import kotlin.text.StringsKt__StringsKt;
import okhttp3.Headers;
import okhttp3.internal.Util;

/* loaded from: classes2.dex */
public final class WebSocketExtensions {
    public static final Companion Companion = new Companion(null);
    private static final String HEADER_WEB_SOCKET_EXTENSION = "Sec-WebSocket-Extensions";
    public final Integer clientMaxWindowBits;
    public final boolean clientNoContextTakeover;
    public final boolean perMessageDeflate;
    public final Integer serverMaxWindowBits;
    public final boolean serverNoContextTakeover;
    public final boolean unknownValues;

    public static final class Companion {
        public /* synthetic */ Companion(g gVar) {
            this();
        }

        public final WebSocketExtensions parse(Headers responseHeaders) throws IOException {
            j.checkNotNullParameter(responseHeaders, "responseHeaders");
            int size = responseHeaders.size();
            boolean z6 = false;
            Integer num = null;
            boolean z7 = false;
            Integer num2 = null;
            boolean z8 = false;
            boolean z9 = false;
            for (int i2 = 0; i2 < size; i2++) {
                if (p.equals(responseHeaders.name(i2), WebSocketExtensions.HEADER_WEB_SOCKET_EXTENSION, true)) {
                    String value = responseHeaders.value(i2);
                    int i7 = 0;
                    while (i7 < value.length()) {
                        int i8 = i7;
                        int delimiterOffset$default = Util.delimiterOffset$default(value, ',', i8, 0, 4, (Object) null);
                        int delimiterOffset = Util.delimiterOffset(value, ';', i8, delimiterOffset$default);
                        String trimSubstring = Util.trimSubstring(value, i8, delimiterOffset);
                        int i9 = delimiterOffset + 1;
                        if (p.equals(trimSubstring, "permessage-deflate", true)) {
                            if (!z6) {
                                z9 = true;
                                while (i9 < delimiterOffset$default) {
                                    int delimiterOffset2 = Util.delimiterOffset(value, ';', i9, delimiterOffset$default);
                                    int delimiterOffset3 = Util.delimiterOffset(value, '=', i9, delimiterOffset2);
                                    String trimSubstring2 = Util.trimSubstring(value, i9, delimiterOffset3);
                                    String removeSurrounding = delimiterOffset3 < delimiterOffset2 ? StringsKt__StringsKt.removeSurrounding(Util.trimSubstring(value, delimiterOffset3 + 1, delimiterOffset2), "\"") : null;
                                    int i10 = delimiterOffset2 + 1;
                                    if (p.equals(trimSubstring2, "client_max_window_bits", true)) {
                                        if (num != null) {
                                            z9 = true;
                                        }
                                        num = removeSurrounding != null ? o.toIntOrNull(removeSurrounding) : null;
                                        i9 = num == null ? i10 : i10;
                                    } else if (p.equals(trimSubstring2, "client_no_context_takeover", true)) {
                                        if (z7) {
                                            z9 = true;
                                        }
                                        if (removeSurrounding != null) {
                                            z9 = true;
                                        }
                                        i9 = i10;
                                        z7 = true;
                                    } else if (p.equals(trimSubstring2, "server_max_window_bits", true)) {
                                        if (num2 != null) {
                                            z9 = true;
                                        }
                                        num2 = removeSurrounding != null ? o.toIntOrNull(removeSurrounding) : null;
                                        if (num2 == null) {
                                        }
                                    } else if (p.equals(trimSubstring2, "server_no_context_takeover", true)) {
                                        if (z8) {
                                            z9 = true;
                                        }
                                        if (removeSurrounding != null) {
                                            z9 = true;
                                        }
                                        i9 = i10;
                                        z8 = true;
                                    }
                                }
                                i7 = i9;
                                z6 = true;
                            }
                            z9 = true;
                        } else {
                            i7 = i9;
                            z9 = true;
                        }
                    }
                }
            }
            return new WebSocketExtensions(z6, num, z7, num2, z8, z9);
        }

        private Companion() {
        }
    }

    public WebSocketExtensions() {
        this(false, null, false, null, false, false, 63, null);
    }

    public static /* synthetic */ WebSocketExtensions copy$default(WebSocketExtensions webSocketExtensions, boolean z6, Integer num, boolean z7, Integer num2, boolean z8, boolean z9, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            z6 = webSocketExtensions.perMessageDeflate;
        }
        if ((i2 & 2) != 0) {
            num = webSocketExtensions.clientMaxWindowBits;
        }
        if ((i2 & 4) != 0) {
            z7 = webSocketExtensions.clientNoContextTakeover;
        }
        if ((i2 & 8) != 0) {
            num2 = webSocketExtensions.serverMaxWindowBits;
        }
        if ((i2 & 16) != 0) {
            z8 = webSocketExtensions.serverNoContextTakeover;
        }
        if ((i2 & 32) != 0) {
            z9 = webSocketExtensions.unknownValues;
        }
        boolean z10 = z8;
        boolean z11 = z9;
        return webSocketExtensions.copy(z6, num, z7, num2, z10, z11);
    }

    public final boolean component1() {
        return this.perMessageDeflate;
    }

    public final Integer component2() {
        return this.clientMaxWindowBits;
    }

    public final boolean component3() {
        return this.clientNoContextTakeover;
    }

    public final Integer component4() {
        return this.serverMaxWindowBits;
    }

    public final boolean component5() {
        return this.serverNoContextTakeover;
    }

    public final boolean component6() {
        return this.unknownValues;
    }

    public final WebSocketExtensions copy(boolean z6, Integer num, boolean z7, Integer num2, boolean z8, boolean z9) {
        return new WebSocketExtensions(z6, num, z7, num2, z8, z9);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof WebSocketExtensions)) {
            return false;
        }
        WebSocketExtensions webSocketExtensions = (WebSocketExtensions) obj;
        return this.perMessageDeflate == webSocketExtensions.perMessageDeflate && j.areEqual(this.clientMaxWindowBits, webSocketExtensions.clientMaxWindowBits) && this.clientNoContextTakeover == webSocketExtensions.clientNoContextTakeover && j.areEqual(this.serverMaxWindowBits, webSocketExtensions.serverMaxWindowBits) && this.serverNoContextTakeover == webSocketExtensions.serverNoContextTakeover && this.unknownValues == webSocketExtensions.unknownValues;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v12 */
    /* JADX WARN: Type inference failed for: r0v13 */
    /* JADX WARN: Type inference failed for: r2v3, types: [boolean] */
    /* JADX WARN: Type inference failed for: r2v6, types: [boolean] */
    public int hashCode() {
        boolean z6 = this.perMessageDeflate;
        ?? r02 = z6;
        if (z6) {
            r02 = 1;
        }
        int i2 = r02 * 31;
        Integer num = this.clientMaxWindowBits;
        int hashCode = (i2 + (num == null ? 0 : num.hashCode())) * 31;
        ?? r22 = this.clientNoContextTakeover;
        int i7 = r22;
        if (r22 != 0) {
            i7 = 1;
        }
        int i8 = (hashCode + i7) * 31;
        Integer num2 = this.serverMaxWindowBits;
        int hashCode2 = (i8 + (num2 != null ? num2.hashCode() : 0)) * 31;
        ?? r23 = this.serverNoContextTakeover;
        int i9 = r23;
        if (r23 != 0) {
            i9 = 1;
        }
        int i10 = (hashCode2 + i9) * 31;
        boolean z7 = this.unknownValues;
        return i10 + (z7 ? 1 : z7 ? 1 : 0);
    }

    public final boolean noContextTakeover(boolean z6) {
        return z6 ? this.clientNoContextTakeover : this.serverNoContextTakeover;
    }

    public String toString() {
        return "WebSocketExtensions(perMessageDeflate=" + this.perMessageDeflate + ", clientMaxWindowBits=" + this.clientMaxWindowBits + ", clientNoContextTakeover=" + this.clientNoContextTakeover + ", serverMaxWindowBits=" + this.serverMaxWindowBits + ", serverNoContextTakeover=" + this.serverNoContextTakeover + ", unknownValues=" + this.unknownValues + ')';
    }

    public WebSocketExtensions(boolean z6, Integer num, boolean z7, Integer num2, boolean z8, boolean z9) {
        this.perMessageDeflate = z6;
        this.clientMaxWindowBits = num;
        this.clientNoContextTakeover = z7;
        this.serverMaxWindowBits = num2;
        this.serverNoContextTakeover = z8;
        this.unknownValues = z9;
    }

    public /* synthetic */ WebSocketExtensions(boolean z6, Integer num, boolean z7, Integer num2, boolean z8, boolean z9, int i2, g gVar) {
        this((i2 & 1) != 0 ? false : z6, (i2 & 2) != 0 ? null : num, (i2 & 4) != 0 ? false : z7, (i2 & 8) != 0 ? null : num2, (i2 & 16) != 0 ? false : z8, (i2 & 32) != 0 ? false : z9);
    }
}
