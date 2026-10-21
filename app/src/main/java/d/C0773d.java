package d;

import A.h;
import M5.g;
import android.content.Context;
import android.content.Intent;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Pair;
import kotlin.jvm.internal.j;
import u5.AbstractC1709h;
import v5.n;
import v5.u;
import v5.z;

/* renamed from: d.d, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0773d extends AbstractC0771b {

    /* renamed from: a, reason: collision with root package name */
    public static final C0772c f13482a = new C0772c(null);

    @Override // d.AbstractC0771b
    public Intent createIntent(Context context, String[] input) {
        j.checkNotNullParameter(context, "context");
        j.checkNotNullParameter(input, "input");
        return f13482a.createIntent$activity_release(input);
    }

    @Override // d.AbstractC0771b
    public C0770a getSynchronousResult(Context context, String[] input) {
        j.checkNotNullParameter(context, "context");
        j.checkNotNullParameter(input, "input");
        if (input.length == 0) {
            return new C0770a(kotlin.collections.a.emptyMap());
        }
        for (String str : input) {
            if (h.checkSelfPermission(context, str) != 0) {
                return null;
            }
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(g.coerceAtLeast(z.mapCapacity(input.length), 16));
        for (String str2 : input) {
            Pair pair = AbstractC1709h.to(str2, Boolean.TRUE);
            linkedHashMap.put(pair.getFirst(), pair.getSecond());
        }
        return new C0770a(linkedHashMap);
    }

    @Override // d.AbstractC0771b
    public Map<String, Boolean> parseResult(int i2, Intent intent) {
        if (i2 != -1) {
            return kotlin.collections.a.emptyMap();
        }
        if (intent == null) {
            return kotlin.collections.a.emptyMap();
        }
        String[] stringArrayExtra = intent.getStringArrayExtra("androidx.activity.result.contract.extra.PERMISSIONS");
        int[] intArrayExtra = intent.getIntArrayExtra("androidx.activity.result.contract.extra.PERMISSION_GRANT_RESULTS");
        if (intArrayExtra == null || stringArrayExtra == null) {
            return kotlin.collections.a.emptyMap();
        }
        ArrayList arrayList = new ArrayList(intArrayExtra.length);
        for (int i7 : intArrayExtra) {
            arrayList.add(Boolean.valueOf(i7 == 0));
        }
        return kotlin.collections.a.toMap(u.zip(n.filterNotNull(stringArrayExtra), arrayList));
    }
}
