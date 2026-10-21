package S0;

import androidx.media3.common.util.Consumer;

/* loaded from: classes.dex */
public interface s {
    int getCueReplacementBehavior();

    void parse(byte[] bArr, int i2, int i7, r rVar, Consumer<c> consumer);

    i parseToLegacySubtitle(byte[] bArr, int i2, int i7);

    void reset();
}
