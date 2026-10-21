package f1;

import android.content.IntentFilter;
import android.os.Bundle;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final class L {

    /* renamed from: c, reason: collision with root package name */
    public static final L f14160c = new L(new Bundle(), null);

    /* renamed from: a, reason: collision with root package name */
    public final Bundle f14161a;

    /* renamed from: b, reason: collision with root package name */
    public List f14162b;

    public L(Bundle bundle, ArrayList arrayList) {
        this.f14161a = bundle;
        this.f14162b = arrayList;
    }

    public static L fromBundle(Bundle bundle) {
        if (bundle != null) {
            return new L(bundle, null);
        }
        return null;
    }

    public final void a() {
        if (this.f14162b == null) {
            ArrayList<String> stringArrayList = this.f14161a.getStringArrayList("controlCategories");
            this.f14162b = stringArrayList;
            if (stringArrayList == null || stringArrayList.isEmpty()) {
                this.f14162b = Collections.EMPTY_LIST;
            }
        }
    }

    public Bundle asBundle() {
        return this.f14161a;
    }

    public boolean contains(L l7) {
        if (l7 == null) {
            return false;
        }
        a();
        l7.a();
        return this.f14162b.containsAll(l7.f14162b);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof L)) {
            return false;
        }
        L l7 = (L) obj;
        a();
        l7.a();
        return this.f14162b.equals(l7.f14162b);
    }

    public List<String> getControlCategories() {
        a();
        return new ArrayList(this.f14162b);
    }

    public int hashCode() {
        a();
        return this.f14162b.hashCode();
    }

    public boolean isEmpty() {
        a();
        return this.f14162b.isEmpty();
    }

    public boolean isValid() {
        a();
        return !this.f14162b.contains(null);
    }

    public boolean matchesControlFilters(List<IntentFilter> list) {
        if (list == null) {
            return false;
        }
        a();
        if (this.f14162b.isEmpty()) {
            return false;
        }
        for (IntentFilter intentFilter : list) {
            if (intentFilter != null) {
                Iterator it = this.f14162b.iterator();
                while (it.hasNext()) {
                    if (intentFilter.hasCategory((String) it.next())) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public String toString() {
        return "MediaRouteSelector{ controlCategories=" + Arrays.toString(getControlCategories().toArray()) + " }";
    }
}
