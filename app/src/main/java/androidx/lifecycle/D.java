package androidx.lifecycle;

import java.util.HashMap;

/* loaded from: classes.dex */
public final class D {

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f6951a = new HashMap();

    public boolean approveCall(String name, int i2) {
        kotlin.jvm.internal.j.checkNotNullParameter(name, "name");
        HashMap hashMap = this.f6951a;
        Integer num = (Integer) hashMap.get(name);
        int intValue = num != null ? num.intValue() : 0;
        boolean z6 = (intValue & i2) != 0;
        hashMap.put(name, Integer.valueOf(i2 | intValue));
        return !z6;
    }
}
