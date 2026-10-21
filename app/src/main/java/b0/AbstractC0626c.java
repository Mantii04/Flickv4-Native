package b0;

import androidx.datastore.preferences.core.MutablePreferences;
import java.util.Map;

/* renamed from: b0.c, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0626c {
    public abstract Map<C0624a, Object> asMap();

    public abstract <T> T get(C0624a c0624a);

    public final MutablePreferences toMutablePreferences() {
        return new MutablePreferences(kotlin.collections.a.toMutableMap(asMap()), false);
    }

    public final AbstractC0626c toPreferences() {
        return new MutablePreferences(kotlin.collections.a.toMutableMap(asMap()), true);
    }
}
