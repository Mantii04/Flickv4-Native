package q1;

import android.os.Bundle;
import androidx.lifecycle.AbstractC0557o;
import androidx.lifecycle.InterfaceC0561t;
import androidx.lifecycle.Lifecycle$Event;
import androidx.lifecycle.r;
import java.util.Iterator;
import java.util.Map;
import n.C1349d;
import n.C1352g;

/* loaded from: classes.dex */
public final class g {

    /* renamed from: b, reason: collision with root package name */
    public boolean f19553b;

    /* renamed from: c, reason: collision with root package name */
    public Bundle f19554c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f19555d;

    /* renamed from: e, reason: collision with root package name */
    public C1511b f19556e;

    /* renamed from: a, reason: collision with root package name */
    public final C1352g f19552a = new C1352g();

    /* renamed from: f, reason: collision with root package name */
    public boolean f19557f = true;

    static {
        new e(null);
    }

    public final Bundle consumeRestoredStateForKey(String key) {
        kotlin.jvm.internal.j.checkNotNullParameter(key, "key");
        if (!this.f19555d) {
            throw new IllegalStateException("You can consumeRestoredStateForKey only after super.onCreate of corresponding component");
        }
        Bundle bundle = this.f19554c;
        if (bundle == null) {
            return null;
        }
        Bundle bundle2 = bundle.getBundle(key);
        Bundle bundle3 = this.f19554c;
        if (bundle3 != null) {
            bundle3.remove(key);
        }
        Bundle bundle4 = this.f19554c;
        if (bundle4 != null && !bundle4.isEmpty()) {
            return bundle2;
        }
        this.f19554c = null;
        return bundle2;
    }

    public final f getSavedStateProvider(String key) {
        kotlin.jvm.internal.j.checkNotNullParameter(key, "key");
        Iterator<Map.Entry<Object, Object>> it = this.f19552a.iterator();
        while (it.hasNext()) {
            Map.Entry<Object, Object> components = it.next();
            kotlin.jvm.internal.j.checkNotNullExpressionValue(components, "components");
            String str = (String) components.getKey();
            f fVar = (f) components.getValue();
            if (kotlin.jvm.internal.j.areEqual(str, key)) {
                return fVar;
            }
        }
        return null;
    }

    public final void performAttach$savedstate_release(AbstractC0557o lifecycle) {
        kotlin.jvm.internal.j.checkNotNullParameter(lifecycle, "lifecycle");
        if (this.f19553b) {
            throw new IllegalStateException("SavedStateRegistry was already attached.");
        }
        lifecycle.addObserver(new r() { // from class: q1.c
            @Override // androidx.lifecycle.r
            public final void onStateChanged(InterfaceC0561t interfaceC0561t, Lifecycle$Event event) {
                g this$0 = g.this;
                kotlin.jvm.internal.j.checkNotNullParameter(this$0, "this$0");
                kotlin.jvm.internal.j.checkNotNullParameter(interfaceC0561t, "<anonymous parameter 0>");
                kotlin.jvm.internal.j.checkNotNullParameter(event, "event");
                if (event == Lifecycle$Event.ON_START) {
                    this$0.f19557f = true;
                } else if (event == Lifecycle$Event.ON_STOP) {
                    this$0.f19557f = false;
                }
            }
        });
        this.f19553b = true;
    }

    public final void performRestore$savedstate_release(Bundle bundle) {
        if (!this.f19553b) {
            throw new IllegalStateException("You must call performAttach() before calling performRestore(Bundle).");
        }
        if (this.f19555d) {
            throw new IllegalStateException("SavedStateRegistry was already restored.");
        }
        this.f19554c = bundle != null ? bundle.getBundle("androidx.lifecycle.BundlableSavedStateRegistry.key") : null;
        this.f19555d = true;
    }

    public final void performSave(Bundle outBundle) {
        kotlin.jvm.internal.j.checkNotNullParameter(outBundle, "outBundle");
        Bundle bundle = new Bundle();
        Bundle bundle2 = this.f19554c;
        if (bundle2 != null) {
            bundle.putAll(bundle2);
        }
        C1349d iteratorWithAdditions = this.f19552a.iteratorWithAdditions();
        kotlin.jvm.internal.j.checkNotNullExpressionValue(iteratorWithAdditions, "this.components.iteratorWithAdditions()");
        while (iteratorWithAdditions.hasNext()) {
            Map.Entry entry = (Map.Entry) iteratorWithAdditions.next();
            bundle.putBundle((String) entry.getKey(), ((f) entry.getValue()).saveState());
        }
        if (bundle.isEmpty()) {
            return;
        }
        outBundle.putBundle("androidx.lifecycle.BundlableSavedStateRegistry.key", bundle);
    }

    public final void registerSavedStateProvider(String key, f provider) {
        kotlin.jvm.internal.j.checkNotNullParameter(key, "key");
        kotlin.jvm.internal.j.checkNotNullParameter(provider, "provider");
        if (((f) this.f19552a.putIfAbsent(key, provider)) != null) {
            throw new IllegalArgumentException("SavedStateProvider with the given key is already registered");
        }
    }

    public final void runOnNextRecreation(Class<? extends d> clazz) {
        kotlin.jvm.internal.j.checkNotNullParameter(clazz, "clazz");
        if (!this.f19557f) {
            throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
        }
        C1511b c1511b = this.f19556e;
        if (c1511b == null) {
            c1511b = new C1511b(this);
        }
        this.f19556e = c1511b;
        try {
            clazz.getDeclaredConstructor(new Class[0]);
            C1511b c1511b2 = this.f19556e;
            if (c1511b2 != null) {
                String name = clazz.getName();
                kotlin.jvm.internal.j.checkNotNullExpressionValue(name, "clazz.name");
                c1511b2.add(name);
            }
        } catch (NoSuchMethodException e3) {
            throw new IllegalArgumentException("Class " + clazz.getSimpleName() + " must have default constructor in order to be automatically recreated", e3);
        }
    }
}
