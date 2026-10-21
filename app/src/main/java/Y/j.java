package Y;

import androidx.datastore.core.SingleProcessDataStore;
import java.util.Set;

/* loaded from: classes.dex */
public final class j {
    public j(kotlin.jvm.internal.g gVar) {
    }

    public final Set<String> getActiveFiles$datastore_core() {
        Set<String> set;
        set = SingleProcessDataStore.f5622k;
        return set;
    }

    public final Object getActiveFilesLock$datastore_core() {
        Object obj;
        obj = SingleProcessDataStore.f5623l;
        return obj;
    }
}
