package f1;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class K {

    /* renamed from: a, reason: collision with root package name */
    public ArrayList f14159a;

    public K() {
    }

    public K addControlCategories(Collection<String> collection) {
        if (collection == null) {
            throw new IllegalArgumentException("categories must not be null");
        }
        if (!collection.isEmpty()) {
            Iterator<String> it = collection.iterator();
            while (it.hasNext()) {
                addControlCategory(it.next());
            }
        }
        return this;
    }

    public K addControlCategory(String str) {
        if (str == null) {
            throw new IllegalArgumentException("category must not be null");
        }
        if (this.f14159a == null) {
            this.f14159a = new ArrayList();
        }
        if (!this.f14159a.contains(str)) {
            this.f14159a.add(str);
        }
        return this;
    }

    public K addSelector(L l7) {
        if (l7 == null) {
            throw new IllegalArgumentException("selector must not be null");
        }
        addControlCategories(l7.getControlCategories());
        return this;
    }

    public L build() {
        if (this.f14159a == null) {
            return L.f14160c;
        }
        Bundle bundle = new Bundle();
        bundle.putStringArrayList("controlCategories", this.f14159a);
        return new L(bundle, this.f14159a);
    }

    public K(L l7) {
        if (l7 == null) {
            throw new IllegalArgumentException("selector must not be null");
        }
        l7.a();
        if (l7.f14162b.isEmpty()) {
            return;
        }
        this.f14159a = new ArrayList(l7.f14162b);
    }
}
