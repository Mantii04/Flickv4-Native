package v0;

import androidx.media3.common.Format;

/* loaded from: classes.dex */
public abstract class T implements r0 {
    private final r0 trackOutput;

    public T(r0 r0Var) {
        this.trackOutput = r0Var;
    }

    @Override // v0.r0
    public void durationUs(long j7) {
        this.trackOutput.durationUs(j7);
    }

    @Override // v0.r0
    public void format(Format format) {
        this.trackOutput.format(format);
    }
}
