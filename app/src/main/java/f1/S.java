package f1;

import android.content.ComponentName;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public final class S {

    /* renamed from: a, reason: collision with root package name */
    public final G f14178a;

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f14179b = new ArrayList();

    /* renamed from: c, reason: collision with root package name */
    public final boolean f14180c;

    /* renamed from: d, reason: collision with root package name */
    public final E f14181d;

    /* renamed from: e, reason: collision with root package name */
    public I f14182e;

    public S(G g7, boolean z6) {
        this.f14178a = g7;
        this.f14181d = g7.getMetadata();
        this.f14180c = z6;
    }

    public ComponentName getComponentName() {
        return this.f14181d.getComponentName();
    }

    public String getPackageName() {
        return this.f14181d.getPackageName();
    }

    public G getProviderInstance() {
        X.a();
        return this.f14178a;
    }

    public List<U> getRoutes() {
        X.a();
        return Collections.unmodifiableList(this.f14179b);
    }

    public String toString() {
        return "MediaRouter.RouteProviderInfo{ packageName=" + getPackageName() + " }";
    }
}
