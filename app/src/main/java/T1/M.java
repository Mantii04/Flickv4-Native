package T1;

import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class M implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ O f3585b;

    public M(O o6) {
        this.f3585b = o6;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.f3585b.f3591d == null) {
            return;
        }
        L l7 = this.f3585b.f3591d;
        if (l7.getValue() == null) {
            O.a(this.f3585b, l7.getException());
            return;
        }
        O o6 = this.f3585b;
        Object value = l7.getValue();
        synchronized (o6) {
            Iterator it = new ArrayList(o6.f3588a).iterator();
            while (it.hasNext()) {
                ((I) it.next()).onResult(value);
            }
        }
    }
}
