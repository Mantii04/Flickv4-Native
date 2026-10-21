package P3;

import java.util.Arrays;

/* loaded from: classes2.dex */
public final class s {

    /* renamed from: a, reason: collision with root package name */
    public final String f2708a;

    /* renamed from: b, reason: collision with root package name */
    public final C.k f2709b;

    /* renamed from: c, reason: collision with root package name */
    public C.k f2710c;

    public s(String str) {
        C.k kVar = new C.k();
        this.f2709b = kVar;
        this.f2710c = kVar;
        this.f2708a = (String) v.checkNotNull(str);
    }

    public s addValue(Object obj) {
        C.k kVar = new C.k();
        this.f2710c.f326b = kVar;
        this.f2710c = kVar;
        kVar.f325a = obj;
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(32);
        sb.append(this.f2708a);
        sb.append('{');
        C.k kVar = (C.k) this.f2709b.f326b;
        String str = "";
        while (kVar != null) {
            Object obj = kVar.f325a;
            sb.append(str);
            if (obj == null || !obj.getClass().isArray()) {
                sb.append(obj);
            } else {
                String deepToString = Arrays.deepToString(new Object[]{obj});
                sb.append((CharSequence) deepToString, 1, deepToString.length() - 1);
            }
            kVar = (C.k) kVar.f326b;
            str = ", ";
        }
        sb.append('}');
        return sb.toString();
    }
}
