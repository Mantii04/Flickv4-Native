package f1;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public final class I {

    /* renamed from: a, reason: collision with root package name */
    public final List f14157a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f14158b;

    public I(ArrayList arrayList, boolean z6) {
        if (arrayList.isEmpty()) {
            this.f14157a = Collections.EMPTY_LIST;
        } else {
            this.f14157a = Collections.unmodifiableList(new ArrayList(arrayList));
        }
        this.f14158b = z6;
    }

    public static I fromBundle(Bundle bundle) {
        if (bundle == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        ArrayList parcelableArrayList = bundle.getParcelableArrayList("routes");
        if (parcelableArrayList != null) {
            for (int i2 = 0; i2 < parcelableArrayList.size(); i2++) {
                arrayList.add(C0915v.fromBundle((Bundle) parcelableArrayList.get(i2)));
            }
        }
        return new I(arrayList, bundle.getBoolean("supportsDynamicGroupRoute", false));
    }

    public List<C0915v> getRoutes() {
        return this.f14157a;
    }

    public boolean isValid() {
        int size = getRoutes().size();
        for (int i2 = 0; i2 < size; i2++) {
            C0915v c0915v = (C0915v) this.f14157a.get(i2);
            if (c0915v == null || !c0915v.isValid()) {
                return false;
            }
        }
        return true;
    }

    public boolean supportsDynamicGroupRoute() {
        return this.f14158b;
    }

    public String toString() {
        return "MediaRouteProviderDescriptor{ routes=" + Arrays.toString(getRoutes().toArray()) + ", isValid=" + isValid() + " }";
    }
}
