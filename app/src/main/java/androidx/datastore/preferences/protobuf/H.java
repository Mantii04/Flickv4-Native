package androidx.datastore.preferences.protobuf;

import java.util.List;
import java.util.RandomAccess;

/* loaded from: classes.dex */
public interface H extends List, RandomAccess {
    boolean isModifiable();

    H mutableCopyWithCapacity(int i2);
}
