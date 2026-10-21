package u0;

/* renamed from: u0.h, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC1667h extends AbstractC1660a {
    public boolean shouldBeSkipped;
    public int skippedOutputBufferCount;
    public long timeUs;

    @Override // u0.AbstractC1660a
    public void clear() {
        super.clear();
        this.timeUs = 0L;
        this.skippedOutputBufferCount = 0;
        this.shouldBeSkipped = false;
    }

    public abstract void release();
}
