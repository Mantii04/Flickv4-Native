package a0;

import androidx.datastore.preferences.protobuf.D;

/* loaded from: classes.dex */
public final class g extends D {
    public g addAllStrings(Iterable<String> iterable) {
        copyOnWrite();
        h.e((h) this.f5749e, iterable);
        return this;
    }
}
