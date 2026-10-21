package f1;

import android.content.ComponentName;

/* loaded from: classes.dex */
public final class E {

    /* renamed from: a, reason: collision with root package name */
    public final ComponentName f14128a;

    public E(ComponentName componentName) {
        if (componentName == null) {
            throw new IllegalArgumentException("componentName must not be null");
        }
        this.f14128a = componentName;
    }

    public ComponentName getComponentName() {
        return this.f14128a;
    }

    public String getPackageName() {
        return this.f14128a.getPackageName();
    }

    public String toString() {
        return "ProviderMetadata{ componentName=" + this.f14128a.flattenToShortString() + " }";
    }
}
