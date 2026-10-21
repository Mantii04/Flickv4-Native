package M;

/* loaded from: classes.dex */
public class j1 extends i1 {
    @Override // M.n1
    public void setAppearanceLightStatusBars(boolean z6) {
        if (!z6) {
            unsetSystemUiFlag(8192);
            return;
        }
        unsetWindowFlag(androidx.media3.common.C.BUFFER_FLAG_NOT_DEPENDED_ON);
        setWindowFlag(Integer.MIN_VALUE);
        setSystemUiFlag(8192);
    }
}
