package C;

import android.content.res.Resources;

/* loaded from: classes.dex */
public final class p {

    /* renamed from: a, reason: collision with root package name */
    public final Resources f330a;

    /* renamed from: b, reason: collision with root package name */
    public final Resources.Theme f331b;

    public p(Resources resources, Resources.Theme theme) {
        this.f330a = resources;
        this.f331b = theme;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && p.class == obj.getClass()) {
            p pVar = (p) obj;
            if (this.f330a.equals(pVar.f330a) && L.c.equals(this.f331b, pVar.f331b)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return L.c.hash(this.f330a, this.f331b);
    }
}
