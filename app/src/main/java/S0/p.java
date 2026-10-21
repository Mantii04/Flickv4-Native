package S0;

import androidx.media3.common.Format;

/* loaded from: classes.dex */
public final class p implements q {
    @Override // S0.q
    public s create(Format format) {
        throw new IllegalStateException("This SubtitleParser.Factory doesn't support any formats.");
    }

    @Override // S0.q
    public int getCueReplacementBehavior(Format format) {
        return 1;
    }

    @Override // S0.q
    public boolean supportsFormat(Format format) {
        return false;
    }
}
