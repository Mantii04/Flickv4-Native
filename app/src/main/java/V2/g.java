package V2;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public final class g {

    /* renamed from: a, reason: collision with root package name */
    public String f3965a = "";

    /* renamed from: b, reason: collision with root package name */
    public List f3966b = new ArrayList();

    public h build() {
        return new h(this.f3965a, Collections.unmodifiableList(this.f3966b));
    }

    public g setLogEventDroppedList(List<f> list) {
        this.f3966b = list;
        return this;
    }

    public g setLogSource(String str) {
        this.f3965a = str;
        return this;
    }
}
