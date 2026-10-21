package M;

/* loaded from: classes.dex */
public final class k1 extends j1 {
    @Override // M.n1
    public void setAppearanceLightNavigationBars(boolean z6) {
        if (!z6) {
            unsetSystemUiFlag(16);
            return;
        }
        unsetWindowFlag(androidx.media3.common.C.BUFFER_FLAG_FIRST_SAMPLE);
        setWindowFlag(Integer.MIN_VALUE);
        setSystemUiFlag(16);
    }
}
