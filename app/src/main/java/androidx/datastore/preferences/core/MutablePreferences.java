package androidx.datastore.preferences.core;

import H5.l;
import b0.AbstractC0625b;
import b0.AbstractC0626c;
import b0.C0624a;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.jvm.internal.g;
import kotlin.jvm.internal.j;
import v5.u;

/* loaded from: classes.dex */
public final class MutablePreferences extends AbstractC0626c {

    /* renamed from: a, reason: collision with root package name */
    public final Map f5727a;

    /* renamed from: b, reason: collision with root package name */
    public final AtomicBoolean f5728b;

    public /* synthetic */ MutablePreferences(Map map, boolean z6, int i2, g gVar) {
        this((i2 & 1) != 0 ? new LinkedHashMap() : map, (i2 & 2) != 0 ? true : z6);
    }

    @Override // b0.AbstractC0626c
    public Map<C0624a, Object> asMap() {
        Map<C0624a, Object> unmodifiableMap = Collections.unmodifiableMap(this.f5727a);
        j.checkNotNullExpressionValue(unmodifiableMap, "unmodifiableMap(preferencesMap)");
        return unmodifiableMap;
    }

    public final void checkNotFrozen$datastore_preferences_core() {
        if (this.f5728b.get()) {
            throw new IllegalStateException("Do mutate preferences once returned to DataStore.");
        }
    }

    public final void clear() {
        checkNotFrozen$datastore_preferences_core();
        this.f5727a.clear();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof MutablePreferences)) {
            return false;
        }
        return j.areEqual(this.f5727a, ((MutablePreferences) obj).f5727a);
    }

    public final void freeze$datastore_preferences_core() {
        this.f5728b.set(true);
    }

    @Override // b0.AbstractC0626c
    public <T> T get(C0624a key) {
        j.checkNotNullParameter(key, "key");
        return (T) this.f5727a.get(key);
    }

    public int hashCode() {
        return this.f5727a.hashCode();
    }

    public final void putAll(AbstractC0625b... pairs) {
        j.checkNotNullParameter(pairs, "pairs");
        checkNotFrozen$datastore_preferences_core();
        if (pairs.length <= 0) {
            return;
        }
        AbstractC0625b abstractC0625b = pairs[0];
        throw null;
    }

    public final <T> T remove(C0624a key) {
        j.checkNotNullParameter(key, "key");
        checkNotFrozen$datastore_preferences_core();
        return (T) this.f5727a.remove(key);
    }

    public final <T> void set(C0624a key, T t6) {
        j.checkNotNullParameter(key, "key");
        setUnchecked$datastore_preferences_core(key, t6);
    }

    public final void setUnchecked$datastore_preferences_core(C0624a key, Object obj) {
        j.checkNotNullParameter(key, "key");
        checkNotFrozen$datastore_preferences_core();
        if (obj == null) {
            remove(key);
            return;
        }
        boolean z6 = obj instanceof Set;
        Map map = this.f5727a;
        if (!z6) {
            map.put(key, obj);
            return;
        }
        Set unmodifiableSet = Collections.unmodifiableSet(u.toSet((Iterable) obj));
        j.checkNotNullExpressionValue(unmodifiableSet, "unmodifiableSet(value.toSet())");
        map.put(key, unmodifiableSet);
    }

    public String toString() {
        return u.joinToString$default(this.f5727a.entrySet(), ",\n", "{\n", "\n}", 0, null, new l() { // from class: androidx.datastore.preferences.core.MutablePreferences$toString$1
            @Override // H5.l
            public final CharSequence invoke(Map.Entry<C0624a, Object> entry) {
                j.checkNotNullParameter(entry, "entry");
                return "  " + entry.getKey().getName() + " = " + entry.getValue();
            }
        }, 24, null);
    }

    public MutablePreferences(Map<C0624a, Object> preferencesMap, boolean z6) {
        j.checkNotNullParameter(preferencesMap, "preferencesMap");
        this.f5727a = preferencesMap;
        this.f5728b = new AtomicBoolean(z6);
    }
}
