package x1;

import android.view.View;
import java.util.ArrayList;
import java.util.HashMap;
import org.apache.commons.lang3.StringUtils;

/* loaded from: classes.dex */
public final class I {

    /* renamed from: b, reason: collision with root package name */
    public final View f20784b;

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f20783a = new HashMap();

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f20785c = new ArrayList();

    public I(View view) {
        this.f20784b = view;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof I)) {
            return false;
        }
        I i2 = (I) obj;
        return this.f20784b == i2.f20784b && this.f20783a.equals(i2.f20783a);
    }

    public int hashCode() {
        return this.f20783a.hashCode() + (this.f20784b.hashCode() * 31);
    }

    public String toString() {
        StringBuilder s6 = A.i.s("TransitionValues@" + Integer.toHexString(hashCode()) + ":\n", "    view = ");
        s6.append(this.f20784b);
        s6.append(StringUtils.LF);
        String B6 = A.i.B(s6.toString(), "    values:");
        HashMap hashMap = this.f20783a;
        for (String str : hashMap.keySet()) {
            B6 = B6 + "    " + str + ": " + hashMap.get(str) + StringUtils.LF;
        }
        return B6;
    }
}
