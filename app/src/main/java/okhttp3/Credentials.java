package okhttp3;

import A.i;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import kotlin.jvm.internal.j;
import okio.ByteString;

/* loaded from: classes2.dex */
public final class Credentials {
    public static final Credentials INSTANCE = new Credentials();

    private Credentials() {
    }

    public static final String basic(String username, String password) {
        j.checkNotNullParameter(username, "username");
        j.checkNotNullParameter(password, "password");
        return basic$default(username, password, null, 4, null);
    }

    public static /* synthetic */ String basic$default(String str, String str2, Charset ISO_8859_1, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            ISO_8859_1 = StandardCharsets.ISO_8859_1;
            j.checkNotNullExpressionValue(ISO_8859_1, "ISO_8859_1");
        }
        return basic(str, str2, ISO_8859_1);
    }

    public static final String basic(String username, String password, Charset charset) {
        j.checkNotNullParameter(username, "username");
        j.checkNotNullParameter(password, "password");
        j.checkNotNullParameter(charset, "charset");
        return i.k("Basic ", ByteString.f19159j.encodeString(username + ':' + password, charset).base64());
    }
}
