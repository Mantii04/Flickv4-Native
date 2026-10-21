package V2;

import java.util.ArrayList;
import java.util.Collections;

/* loaded from: classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public l f3951a = null;

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f3952b = new ArrayList();

    /* renamed from: c, reason: collision with root package name */
    public d f3953c = null;

    /* renamed from: d, reason: collision with root package name */
    public String f3954d = "";

    public a addLogSourceMetrics(h hVar) {
        this.f3952b.add(hVar);
        return this;
    }

    public b build() {
        return new b(this.f3951a, Collections.unmodifiableList(this.f3952b), this.f3953c, this.f3954d);
    }

    public a setAppNamespace(String str) {
        this.f3954d = str;
        return this;
    }

    public a setGlobalMetrics(d dVar) {
        this.f3953c = dVar;
        return this;
    }

    public a setWindow(l lVar) {
        this.f3951a = lVar;
        return this;
    }
}
