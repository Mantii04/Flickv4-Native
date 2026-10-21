package okhttp3.internal.http;

import A.i;
import P5.p;
import cz.msebera.android.httpclient.message.TokenParser;
import java.io.IOException;
import java.net.ProtocolException;
import kotlin.jvm.internal.g;
import kotlin.jvm.internal.j;
import okhttp3.Protocol;
import okhttp3.Response;

/* loaded from: classes2.dex */
public final class StatusLine {
    public static final Companion Companion = new Companion(null);
    public static final int HTTP_CONTINUE = 100;
    public static final int HTTP_MISDIRECTED_REQUEST = 421;
    public static final int HTTP_PERM_REDIRECT = 308;
    public static final int HTTP_TEMP_REDIRECT = 307;
    public final int code;
    public final String message;
    public final Protocol protocol;

    public static final class Companion {
        public /* synthetic */ Companion(g gVar) {
            this();
        }

        public final StatusLine get(Response response) {
            j.checkNotNullParameter(response, "response");
            return new StatusLine(response.protocol(), response.code(), response.message());
        }

        public final StatusLine parse(String statusLine) throws IOException {
            Protocol protocol;
            int i2;
            String str;
            j.checkNotNullParameter(statusLine, "statusLine");
            if (p.startsWith$default(statusLine, "HTTP/1.", false, 2, null)) {
                i2 = 9;
                if (statusLine.length() < 9 || statusLine.charAt(8) != ' ') {
                    throw new ProtocolException("Unexpected status line: ".concat(statusLine));
                }
                int charAt = statusLine.charAt(7) - '0';
                if (charAt == 0) {
                    protocol = Protocol.HTTP_1_0;
                } else {
                    if (charAt != 1) {
                        throw new ProtocolException("Unexpected status line: ".concat(statusLine));
                    }
                    protocol = Protocol.HTTP_1_1;
                }
            } else {
                if (!p.startsWith$default(statusLine, "ICY ", false, 2, null)) {
                    throw new ProtocolException(i.k("Unexpected status line: ", statusLine));
                }
                protocol = Protocol.HTTP_1_0;
                i2 = 4;
            }
            int i7 = i2 + 3;
            if (statusLine.length() < i7) {
                throw new ProtocolException("Unexpected status line: ".concat(statusLine));
            }
            try {
                String substring = statusLine.substring(i2, i7);
                j.checkNotNullExpressionValue(substring, "this as java.lang.String…ing(startIndex, endIndex)");
                int parseInt = Integer.parseInt(substring);
                if (statusLine.length() <= i7) {
                    str = "";
                } else {
                    if (statusLine.charAt(i7) != ' ') {
                        throw new ProtocolException("Unexpected status line: ".concat(statusLine));
                    }
                    str = statusLine.substring(i2 + 4);
                    j.checkNotNullExpressionValue(str, "this as java.lang.String).substring(startIndex)");
                }
                return new StatusLine(protocol, parseInt, str);
            } catch (NumberFormatException unused) {
                throw new ProtocolException("Unexpected status line: ".concat(statusLine));
            }
        }

        private Companion() {
        }
    }

    public StatusLine(Protocol protocol, int i2, String message) {
        j.checkNotNullParameter(protocol, "protocol");
        j.checkNotNullParameter(message, "message");
        this.protocol = protocol;
        this.code = i2;
        this.message = message;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        if (this.protocol == Protocol.HTTP_1_0) {
            sb.append("HTTP/1.0");
        } else {
            sb.append("HTTP/1.1");
        }
        sb.append(TokenParser.SP);
        sb.append(this.code);
        sb.append(TokenParser.SP);
        sb.append(this.message);
        String sb2 = sb.toString();
        j.checkNotNullExpressionValue(sb2, "StringBuilder().apply(builderAction).toString()");
        return sb2;
    }
}
