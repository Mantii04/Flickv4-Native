package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.util.Log;
import java.util.ArrayList;
import java.util.Map;

/* loaded from: classes.dex */
public final class U implements androidx.activity.result.c {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ C0469j0 f6167a;

    public U(C0469j0 c0469j0) {
        this.f6167a = c0469j0;
    }

    @Override // androidx.activity.result.c
    @SuppressLint({"SyntheticAccessor"})
    public void onActivityResult(Map<String, Boolean> map) {
        String[] strArr = (String[]) map.keySet().toArray(new String[0]);
        ArrayList arrayList = new ArrayList(map.values());
        int[] iArr = new int[arrayList.size()];
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            iArr[i2] = ((Boolean) arrayList.get(i2)).booleanValue() ? 0 : -1;
        }
        C0469j0 c0469j0 = this.f6167a;
        C0461f0 c0461f0 = (C0461f0) c0469j0.f6211C.pollFirst();
        if (c0461f0 == null) {
            Log.w("FragmentManager", "No permissions were requested for " + this);
            return;
        }
        String str = c0461f0.f6197b;
        C c7 = c0469j0.f6224c.c(str);
        if (c7 != null) {
            c7.onRequestPermissionsResult(c0461f0.f6198e, strArr, iArr);
            return;
        }
        Log.w("FragmentManager", "Permission request result delivered for unknown Fragment " + str);
    }
}
