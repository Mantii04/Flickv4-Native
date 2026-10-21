package androidx.savedstate;

import A.i;
import android.os.Bundle;
import androidx.lifecycle.InterfaceC0561t;
import androidx.lifecycle.Lifecycle$Event;
import androidx.lifecycle.r;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import q1.C1510a;
import q1.d;
import q1.j;

/* loaded from: classes.dex */
public final class Recreator implements r {

    /* renamed from: b, reason: collision with root package name */
    public final j f8132b;

    static {
        new C1510a(null);
    }

    public Recreator(j owner) {
        kotlin.jvm.internal.j.checkNotNullParameter(owner, "owner");
        this.f8132b = owner;
    }

    @Override // androidx.lifecycle.r
    public void onStateChanged(InterfaceC0561t source, Lifecycle$Event event) {
        kotlin.jvm.internal.j.checkNotNullParameter(source, "source");
        kotlin.jvm.internal.j.checkNotNullParameter(event, "event");
        if (event != Lifecycle$Event.ON_CREATE) {
            throw new AssertionError("Next event must be ON_CREATE");
        }
        source.getLifecycle().removeObserver(this);
        j jVar = this.f8132b;
        Bundle consumeRestoredStateForKey = jVar.getSavedStateRegistry().consumeRestoredStateForKey("androidx.savedstate.Restarter");
        if (consumeRestoredStateForKey == null) {
            return;
        }
        ArrayList<String> stringArrayList = consumeRestoredStateForKey.getStringArrayList("classes_to_restore");
        if (stringArrayList == null) {
            throw new IllegalStateException("Bundle with restored state for the component \"androidx.savedstate.Restarter\" must contain list of strings by the key \"classes_to_restore\"");
        }
        for (String str : stringArrayList) {
            try {
                Class<? extends U> asSubclass = Class.forName(str, false, Recreator.class.getClassLoader()).asSubclass(d.class);
                kotlin.jvm.internal.j.checkNotNullExpressionValue(asSubclass, "{\n                Class.…class.java)\n            }");
                try {
                    Constructor declaredConstructor = asSubclass.getDeclaredConstructor(new Class[0]);
                    declaredConstructor.setAccessible(true);
                    try {
                        Object newInstance = declaredConstructor.newInstance(new Object[0]);
                        kotlin.jvm.internal.j.checkNotNullExpressionValue(newInstance, "{\n                constr…wInstance()\n            }");
                        ((d) newInstance).onRecreated(jVar);
                    } catch (Exception e3) {
                        throw new RuntimeException(i.k("Failed to instantiate ", str), e3);
                    }
                } catch (NoSuchMethodException e7) {
                    throw new IllegalStateException("Class " + asSubclass.getSimpleName() + " must have default constructor in order to be automatically recreated", e7);
                }
            } catch (ClassNotFoundException e8) {
                throw new RuntimeException(i.l("Class ", str, " wasn't found"), e8);
            }
        }
    }
}
