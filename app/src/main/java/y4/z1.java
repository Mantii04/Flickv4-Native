package y4;

import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public final class z1 extends h2.t {
    @Override // com.android.volley.Request
    public Map<String, String> getHeaders() {
        HashMap hashMap = new HashMap();
        hashMap.put("Authorization", "Bearer " + J4.b.f1542b);
        return hashMap;
    }
}
