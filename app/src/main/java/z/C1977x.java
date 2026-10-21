package z;

import android.app.PendingIntent;
import android.os.Bundle;
import androidx.core.graphics.drawable.IconCompat;
import java.util.ArrayList;
import java.util.Iterator;

/* renamed from: z.x, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1977x {

    /* renamed from: a, reason: collision with root package name */
    public final IconCompat f21377a;

    /* renamed from: b, reason: collision with root package name */
    public final CharSequence f21378b;

    /* renamed from: c, reason: collision with root package name */
    public final PendingIntent f21379c;

    /* renamed from: d, reason: collision with root package name */
    public final boolean f21380d;

    /* renamed from: e, reason: collision with root package name */
    public final Bundle f21381e;

    /* renamed from: f, reason: collision with root package name */
    public final ArrayList f21382f;

    /* renamed from: g, reason: collision with root package name */
    public final boolean f21383g;

    public C1977x(int i2, CharSequence charSequence, PendingIntent pendingIntent) {
        IconCompat createWithResource = i2 == 0 ? null : IconCompat.createWithResource(null, "", i2);
        Bundle bundle = new Bundle();
        this.f21380d = true;
        this.f21383g = true;
        this.f21377a = createWithResource;
        this.f21378b = C1954B.limitCharSequenceLength(charSequence);
        this.f21379c = pendingIntent;
        this.f21381e = bundle;
        this.f21382f = null;
        this.f21380d = true;
        this.f21383g = true;
    }

    public y build() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = this.f21382f;
        if (arrayList3 != null) {
            Iterator it = arrayList3.iterator();
            if (it.hasNext()) {
                throw b.c.g(it);
            }
        }
        return new y(this.f21377a, this.f21378b, this.f21379c, this.f21381e, arrayList2.isEmpty() ? null : (U[]) arrayList2.toArray(new U[arrayList2.size()]), arrayList.isEmpty() ? null : (U[]) arrayList.toArray(new U[arrayList.size()]), this.f21380d, this.f21383g);
    }
}
