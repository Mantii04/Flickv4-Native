package r2;

import android.text.TextUtils;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* renamed from: r2.M, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1554M implements InterfaceC1551J {

    /* renamed from: b, reason: collision with root package name */
    public final Map f19744b;

    /* renamed from: c, reason: collision with root package name */
    public volatile Map f19745c;

    public C1554M(Map map) {
        this.f19744b = Collections.unmodifiableMap(map);
    }

    public final HashMap a() {
        HashMap hashMap = new HashMap();
        for (Map.Entry entry : this.f19744b.entrySet()) {
            List list = (List) entry.getValue();
            StringBuilder sb = new StringBuilder();
            int size = list.size();
            for (int i2 = 0; i2 < size; i2++) {
                String buildHeader = ((C1553L) list.get(i2)).buildHeader();
                if (!TextUtils.isEmpty(buildHeader)) {
                    sb.append(buildHeader);
                    if (i2 != list.size() - 1) {
                        sb.append(',');
                    }
                }
            }
            String sb2 = sb.toString();
            if (!TextUtils.isEmpty(sb2)) {
                hashMap.put(entry.getKey(), sb2);
            }
        }
        return hashMap;
    }

    public boolean equals(Object obj) {
        if (obj instanceof C1554M) {
            return this.f19744b.equals(((C1554M) obj).f19744b);
        }
        return false;
    }

    @Override // r2.InterfaceC1551J
    public Map<String, String> getHeaders() {
        if (this.f19745c == null) {
            synchronized (this) {
                try {
                    if (this.f19745c == null) {
                        this.f19745c = Collections.unmodifiableMap(a());
                    }
                } finally {
                }
            }
        }
        return this.f19745c;
    }

    public int hashCode() {
        return this.f19744b.hashCode();
    }

    public String toString() {
        return "LazyHeaders{headers=" + this.f19744b + '}';
    }
}
