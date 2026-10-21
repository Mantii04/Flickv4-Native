package r2;

import android.text.TextUtils;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* renamed from: r2.K, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1552K {

    /* renamed from: b, reason: collision with root package name */
    public static final Map f19741b;

    /* renamed from: a, reason: collision with root package name */
    public final Map f19742a = f19741b;

    static {
        String property = System.getProperty("http.agent");
        if (!TextUtils.isEmpty(property)) {
            int length = property.length();
            StringBuilder sb = new StringBuilder(property.length());
            for (int i2 = 0; i2 < length; i2++) {
                char charAt = property.charAt(i2);
                if ((charAt > 31 || charAt == '\t') && charAt < 127) {
                    sb.append(charAt);
                } else {
                    sb.append('?');
                }
            }
            property = sb.toString();
        }
        HashMap hashMap = new HashMap(2);
        if (!TextUtils.isEmpty(property)) {
            hashMap.put("User-Agent", Collections.singletonList(new C1553L(property)));
        }
        f19741b = Collections.unmodifiableMap(hashMap);
    }

    public C1554M build() {
        return new C1554M(this.f19742a);
    }
}
