package androidx.mediarouter.app;

import android.widget.SeekBar;

/* loaded from: classes.dex */
public final class l0 implements SeekBar.OnSeekBarChangeListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ m0 f7840b;

    public l0(m0 m0Var) {
        this.f7840b = m0Var;
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onProgressChanged(SeekBar seekBar, int i2, boolean z6) {
        if (z6) {
            f1.U u6 = (f1.U) seekBar.getTag();
            Y y6 = (Y) this.f7840b.f7847E.get(u6.getId());
            if (y6 != null) {
                y6.o(i2 == 0);
            }
            u6.requestSetVolume(i2);
        }
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onStartTrackingTouch(SeekBar seekBar) {
        m0 m0Var = this.f7840b;
        if (m0Var.f7848F != null) {
            m0Var.f7843A.removeMessages(2);
        }
        m0Var.f7848F = (f1.U) seekBar.getTag();
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onStopTrackingTouch(SeekBar seekBar) {
        this.f7840b.f7843A.sendEmptyMessageDelayed(2, 500L);
    }
}
