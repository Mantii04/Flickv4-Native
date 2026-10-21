package r2;

import android.util.Base64;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;

/* renamed from: r2.r, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1586r implements InterfaceC1584p {
    public Class<InputStream> getDataClass() {
        return InputStream.class;
    }

    public void close(InputStream inputStream) throws IOException {
        inputStream.close();
    }

    /* renamed from: decode, reason: merged with bridge method [inline-methods] */
    public InputStream m252decode(String str) {
        if (!str.startsWith("data:image")) {
            throw new IllegalArgumentException("Not a valid image data URL.");
        }
        int indexOf = str.indexOf(44);
        if (indexOf == -1) {
            throw new IllegalArgumentException("Missing comma in data URL.");
        }
        if (str.substring(0, indexOf).endsWith(";base64")) {
            return new ByteArrayInputStream(Base64.decode(str.substring(indexOf + 1), 0));
        }
        throw new IllegalArgumentException("Not a base64 image data URL.");
    }
}
