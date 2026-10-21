package J;

import android.util.Base64;
import java.util.List;

/* loaded from: classes.dex */
public final class i {

    /* renamed from: a, reason: collision with root package name */
    public final String f1400a;

    /* renamed from: b, reason: collision with root package name */
    public final String f1401b;

    /* renamed from: c, reason: collision with root package name */
    public final String f1402c;

    /* renamed from: d, reason: collision with root package name */
    public final List f1403d;

    /* renamed from: e, reason: collision with root package name */
    public final String f1404e;

    public i(String str, String str2, String str3, List<List<byte[]>> list) {
        this.f1400a = (String) L.h.checkNotNull(str);
        this.f1401b = (String) L.h.checkNotNull(str2);
        this.f1402c = (String) L.h.checkNotNull(str3);
        this.f1403d = (List) L.h.checkNotNull(list);
        this.f1404e = str + "-" + str2 + "-" + str3;
    }

    public List<List<byte[]>> getCertificates() {
        return this.f1403d;
    }

    public int getCertificatesArrayResId() {
        return 0;
    }

    public String getProviderAuthority() {
        return this.f1400a;
    }

    public String getProviderPackage() {
        return this.f1401b;
    }

    public String getQuery() {
        return this.f1402c;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("FontRequest {mProviderAuthority: " + this.f1400a + ", mProviderPackage: " + this.f1401b + ", mQuery: " + this.f1402c + ", mCertificates:");
        int i2 = 0;
        while (true) {
            List list = this.f1403d;
            if (i2 >= list.size()) {
                sb.append("}mCertificatesArray: 0");
                return sb.toString();
            }
            sb.append(" [");
            List list2 = (List) list.get(i2);
            for (int i7 = 0; i7 < list2.size(); i7++) {
                sb.append(" \"");
                sb.append(Base64.encodeToString((byte[]) list2.get(i7), 0));
                sb.append("\"");
            }
            sb.append(" ]");
            i2++;
        }
    }
}
