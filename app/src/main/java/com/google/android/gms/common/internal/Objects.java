package com.google.android.gms.common.internal;

import A.i;
import android.os.Bundle;
import com.google.android.gms.common.annotation.KeepForSdk;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Set;

@KeepForSdk
/* loaded from: classes.dex */
public final class Objects {

    @KeepForSdk
    public static final class ToStringHelper {

        /* renamed from: a, reason: collision with root package name */
        public final ArrayList f10892a;

        /* renamed from: b, reason: collision with root package name */
        public final Object f10893b;

        public /* synthetic */ ToStringHelper(Object obj) {
            Preconditions.checkNotNull(obj);
            this.f10893b = obj;
            this.f10892a = new ArrayList();
        }

        @KeepForSdk
        public ToStringHelper add(String str, Object obj) {
            Preconditions.checkNotNull(str);
            this.f10892a.add(i.C(str, "=", String.valueOf(obj)));
            return this;
        }

        @KeepForSdk
        public String toString() {
            StringBuilder sb = new StringBuilder(100);
            sb.append(this.f10893b.getClass().getSimpleName());
            sb.append('{');
            ArrayList arrayList = this.f10892a;
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                sb.append((String) arrayList.get(i2));
                if (i2 < size - 1) {
                    sb.append(", ");
                }
            }
            sb.append('}');
            return sb.toString();
        }
    }

    private Objects() {
        throw new AssertionError("Uninstantiable");
    }

    @KeepForSdk
    public static boolean checkBundlesEquality(Bundle bundle, Bundle bundle2) {
        if (bundle == null || bundle2 == null) {
            return bundle == bundle2;
        }
        if (bundle.size() != bundle2.size()) {
            return false;
        }
        Set<String> keySet = bundle.keySet();
        if (!keySet.containsAll(bundle2.keySet())) {
            return false;
        }
        for (String str : keySet) {
            if (!equal(bundle.get(str), bundle2.get(str))) {
                return false;
            }
        }
        return true;
    }

    @KeepForSdk
    public static boolean equal(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    @KeepForSdk
    public static int hashCode(Object... objArr) {
        return Arrays.hashCode(objArr);
    }

    @KeepForSdk
    public static ToStringHelper toStringHelper(Object obj) {
        return new ToStringHelper(obj);
    }
}
