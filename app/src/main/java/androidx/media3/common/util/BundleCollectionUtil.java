package androidx.media3.common.util;

import P3.p;
import P3.v;
import Q3.C0248s;
import android.os.Bundle;
import android.util.SparseArray;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import x3.D;

@UnstableApi
/* loaded from: classes.dex */
public final class BundleCollectionUtil {
    private BundleCollectionUtil() {
    }

    public static HashMap<String, String> bundleToStringHashMap(Bundle bundle) {
        HashMap<String, String> hashMap = new HashMap<>();
        if (bundle != Bundle.EMPTY) {
            for (String str : bundle.keySet()) {
                String string = bundle.getString(str);
                if (string != null) {
                    hashMap.put(str, string);
                }
            }
        }
        return hashMap;
    }

    public static ImmutableMap<String, String> bundleToStringImmutableMap(Bundle bundle) {
        return bundle == Bundle.EMPTY ? ImmutableMap.of() : ImmutableMap.copyOf((Map) bundleToStringHashMap(bundle));
    }

    public static void ensureClassLoader(Bundle bundle) {
        if (bundle != null) {
            bundle.setClassLoader((ClassLoader) Util.castNonNull(BundleCollectionUtil.class.getClassLoader()));
        }
    }

    public static <T> ImmutableList<T> fromBundleList(p pVar, List<Bundle> list) {
        C0248s builder = ImmutableList.builder();
        for (int i2 = 0; i2 < list.size(); i2++) {
            builder.add(pVar.apply((Bundle) v.checkNotNull(list.get(i2))));
        }
        return (ImmutableList<T>) builder.build();
    }

    public static <T> SparseArray<T> fromBundleSparseArray(p pVar, SparseArray<Bundle> sparseArray) {
        D d7 = (SparseArray<T>) new SparseArray(sparseArray.size());
        for (int i2 = 0; i2 < sparseArray.size(); i2++) {
            d7.put(sparseArray.keyAt(i2), pVar.apply(sparseArray.valueAt(i2)));
        }
        return d7;
    }

    public static Bundle getBundleWithDefault(Bundle bundle, String str, Bundle bundle2) {
        Bundle bundle3 = bundle.getBundle(str);
        return bundle3 != null ? bundle3 : bundle2;
    }

    public static ArrayList<Integer> getIntegerArrayListWithDefault(Bundle bundle, String str, ArrayList<Integer> arrayList) {
        ArrayList<Integer> integerArrayList = bundle.getIntegerArrayList(str);
        return integerArrayList != null ? integerArrayList : arrayList;
    }

    public static Bundle stringMapToBundle(Map<String, String> map) {
        Bundle bundle = new Bundle();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            bundle.putString(entry.getKey(), entry.getValue());
        }
        return bundle;
    }

    public static <T> ArrayList<Bundle> toBundleArrayList(Collection<T> collection, p pVar) {
        ArrayList<Bundle> arrayList = new ArrayList<>(collection.size());
        Iterator<T> it = collection.iterator();
        while (it.hasNext()) {
            arrayList.add((Bundle) pVar.apply(it.next()));
        }
        return arrayList;
    }

    public static <T> ImmutableList<Bundle> toBundleList(List<T> list, p pVar) {
        C0248s builder = ImmutableList.builder();
        for (int i2 = 0; i2 < list.size(); i2++) {
            builder.add(pVar.apply(list.get(i2)));
        }
        return builder.build();
    }

    public static <T> SparseArray<Bundle> toBundleSparseArray(SparseArray<T> sparseArray, p pVar) {
        SparseArray<Bundle> sparseArray2 = new SparseArray<>(sparseArray.size());
        for (int i2 = 0; i2 < sparseArray.size(); i2++) {
            sparseArray2.put(sparseArray.keyAt(i2), (Bundle) pVar.apply(sparseArray.valueAt(i2)));
        }
        return sparseArray2;
    }
}
