package U;

import java.util.ArrayList;
import v5.p;

/* loaded from: classes.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f3741a = new ArrayList();

    public final void onRelease() {
        ArrayList arrayList = this.f3741a;
        int lastIndex = p.getLastIndex(arrayList);
        if (-1 >= lastIndex) {
            return;
        }
        arrayList.get(lastIndex).getClass();
        throw new ClassCastException();
    }
}
