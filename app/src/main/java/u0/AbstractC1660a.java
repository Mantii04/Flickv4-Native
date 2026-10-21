package u0;

import androidx.media3.common.C;

/* renamed from: u0.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC1660a {
    private int flags;

    public final void addFlag(int i2) {
        this.flags = i2 | this.flags;
    }

    public void clear() {
        this.flags = 0;
    }

    public final void clearFlag(int i2) {
        this.flags = (~i2) & this.flags;
    }

    public final boolean getFlag(int i2) {
        return (this.flags & i2) == i2;
    }

    public final boolean hasSupplementalData() {
        return getFlag(268435456);
    }

    public final boolean isEndOfStream() {
        return getFlag(4);
    }

    public final boolean isFirstSample() {
        return getFlag(C.BUFFER_FLAG_FIRST_SAMPLE);
    }

    public final boolean isKeyFrame() {
        return getFlag(1);
    }

    public final boolean isLastSample() {
        return getFlag(C.BUFFER_FLAG_LAST_SAMPLE);
    }

    public final boolean notDependedOn() {
        return getFlag(C.BUFFER_FLAG_NOT_DEPENDED_ON);
    }

    public final void setFlags(int i2) {
        this.flags = i2;
    }
}
