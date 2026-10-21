package androidx.lifecycle;

import android.os.Bundle;
import com.google.firebase.crashlytics.internal.metadata.UserMetadata;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;

/* loaded from: classes.dex */
public final class P {
    public P(kotlin.jvm.internal.g gVar) {
    }

    public final Q createHandle(Bundle bundle, Bundle bundle2) {
        if (bundle == null) {
            if (bundle2 == null) {
                return new Q();
            }
            HashMap hashMap = new HashMap();
            for (String key : bundle2.keySet()) {
                kotlin.jvm.internal.j.checkNotNullExpressionValue(key, "key");
                hashMap.put(key, bundle2.get(key));
            }
            return new Q(hashMap);
        }
        ArrayList parcelableArrayList = bundle.getParcelableArrayList(UserMetadata.KEYDATA_FILENAME);
        ArrayList parcelableArrayList2 = bundle.getParcelableArrayList("values");
        if (parcelableArrayList == null || parcelableArrayList2 == null || parcelableArrayList.size() != parcelableArrayList2.size()) {
            throw new IllegalStateException("Invalid bundle passed as restored state");
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        int size = parcelableArrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            Object obj = parcelableArrayList.get(i2);
            kotlin.jvm.internal.j.checkNotNull(obj, "null cannot be cast to non-null type kotlin.String");
            linkedHashMap.put((String) obj, parcelableArrayList2.get(i2));
        }
        return new Q(linkedHashMap);
    }

    public final boolean validateValue(Object obj) {
        Class[] clsArr;
        if (obj == null) {
            return true;
        }
        clsArr = Q.f6976g;
        for (Class cls : clsArr) {
            kotlin.jvm.internal.j.checkNotNull(cls);
            if (cls.isInstance(obj)) {
                return true;
            }
        }
        return false;
    }
}
