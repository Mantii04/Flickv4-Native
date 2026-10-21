package v0;

/* loaded from: classes.dex */
public abstract class S implements g0 {
    private final g0 seekMap;

    public S(g0 g0Var) {
        this.seekMap = g0Var;
    }

    @Override // v0.g0
    public long getDurationUs() {
        return this.seekMap.getDurationUs();
    }

    @Override // v0.g0
    public e0 getSeekPoints(long j7) {
        return this.seekMap.getSeekPoints(j7);
    }

    @Override // v0.g0
    public boolean isEstimated() {
        return this.seekMap.isEstimated();
    }

    @Override // v0.g0
    public boolean isSeekable() {
        return this.seekMap.isSeekable();
    }
}
