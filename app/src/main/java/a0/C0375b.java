package a0;

import androidx.datastore.core.CorruptionException;
import androidx.datastore.preferences.protobuf.InvalidProtocolBufferException;
import java.io.InputStream;

/* renamed from: a0.b, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0375b {
    public C0375b(kotlin.jvm.internal.g gVar) {
    }

    public final f readFrom(InputStream input) {
        kotlin.jvm.internal.j.checkNotNullParameter(input, "input");
        try {
            f parseFrom = f.parseFrom(input);
            kotlin.jvm.internal.j.checkNotNullExpressionValue(parseFrom, "{\n                PreferencesProto.PreferenceMap.parseFrom(input)\n            }");
            return parseFrom;
        } catch (InvalidProtocolBufferException e3) {
            throw new CorruptionException("Unable to parse preferences proto.", e3);
        }
    }
}
