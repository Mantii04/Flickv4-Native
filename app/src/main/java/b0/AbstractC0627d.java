package b0;

import androidx.datastore.preferences.core.MutablePreferences;
import java.util.Arrays;
import kotlin.jvm.internal.j;

/* renamed from: b0.d, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0627d {
    public static final AbstractC0626c createEmpty() {
        return new MutablePreferences(null, true, 1, null);
    }

    public static final MutablePreferences createMutable(AbstractC0625b... pairs) {
        j.checkNotNullParameter(pairs, "pairs");
        MutablePreferences mutablePreferences = new MutablePreferences(null, false, 1, null);
        mutablePreferences.putAll((AbstractC0625b[]) Arrays.copyOf(pairs, pairs.length));
        return mutablePreferences;
    }
}
