package androidx.lifecycle;

import android.os.Binder;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.Size;
import android.util.SizeF;
import android.util.SparseArray;
import com.google.firebase.crashlytics.internal.metadata.UserMetadata;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import kotlinx.coroutines.flow.StateFlowImpl;
import u5.AbstractC1709h;

/* loaded from: classes.dex */
public final class Q {

    /* renamed from: f, reason: collision with root package name */
    public static final P f6975f = new P(null);

    /* renamed from: g, reason: collision with root package name */
    public static final Class[] f6976g = {Boolean.TYPE, boolean[].class, Double.TYPE, double[].class, Integer.TYPE, int[].class, Long.TYPE, long[].class, String.class, String[].class, Binder.class, Bundle.class, Byte.TYPE, byte[].class, Character.TYPE, char[].class, CharSequence.class, CharSequence[].class, ArrayList.class, Float.TYPE, float[].class, Parcelable.class, Parcelable[].class, Serializable.class, Short.TYPE, short[].class, SparseArray.class, Size.class, SizeF.class};

    /* renamed from: a, reason: collision with root package name */
    public final LinkedHashMap f6977a;

    /* renamed from: b, reason: collision with root package name */
    public final LinkedHashMap f6978b;

    /* renamed from: c, reason: collision with root package name */
    public final LinkedHashMap f6979c;

    /* renamed from: d, reason: collision with root package name */
    public final LinkedHashMap f6980d;

    /* renamed from: e, reason: collision with root package name */
    public final q1.f f6981e;

    public Q(Map<String, ? extends Object> initialState) {
        kotlin.jvm.internal.j.checkNotNullParameter(initialState, "initialState");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        this.f6977a = linkedHashMap;
        this.f6978b = new LinkedHashMap();
        this.f6979c = new LinkedHashMap();
        this.f6980d = new LinkedHashMap();
        this.f6981e = new androidx.activity.f(this, 1);
        linkedHashMap.putAll(initialState);
    }

    public static Bundle a(Q this$0) {
        kotlin.jvm.internal.j.checkNotNullParameter(this$0, "this$0");
        for (Map.Entry entry : kotlin.collections.a.toMap(this$0.f6978b).entrySet()) {
            this$0.set((String) entry.getKey(), ((q1.f) entry.getValue()).saveState());
        }
        LinkedHashMap linkedHashMap = this$0.f6977a;
        Set<String> keySet = linkedHashMap.keySet();
        ArrayList arrayList = new ArrayList(keySet.size());
        ArrayList arrayList2 = new ArrayList(arrayList.size());
        for (String str : keySet) {
            arrayList.add(str);
            arrayList2.add(linkedHashMap.get(str));
        }
        return I.d.bundleOf(AbstractC1709h.to(UserMetadata.KEYDATA_FILENAME, arrayList), AbstractC1709h.to("values", arrayList2));
    }

    public final q1.f savedStateProvider() {
        return this.f6981e;
    }

    public final <T> void set(String key, T t6) {
        kotlin.jvm.internal.j.checkNotNullParameter(key, "key");
        if (!f6975f.validateValue(t6)) {
            StringBuilder sb = new StringBuilder("Can't put value with type ");
            kotlin.jvm.internal.j.checkNotNull(t6);
            sb.append(t6.getClass());
            sb.append(" into saved state");
            throw new IllegalArgumentException(sb.toString());
        }
        Object obj = this.f6979c.get(key);
        E e3 = obj instanceof E ? (E) obj : null;
        if (e3 != null) {
            e3.setValue(t6);
        } else {
            this.f6977a.put(key, t6);
        }
        U5.k kVar = (U5.k) this.f6980d.get(key);
        if (kVar == null) {
            return;
        }
        ((StateFlowImpl) kVar).setValue(t6);
    }

    public Q() {
        this.f6977a = new LinkedHashMap();
        this.f6978b = new LinkedHashMap();
        this.f6979c = new LinkedHashMap();
        this.f6980d = new LinkedHashMap();
        this.f6981e = new androidx.activity.f(this, 1);
    }
}
