package androidx.mediarouter.app;

import android.widget.SeekBar;

/* loaded from: classes.dex */
public final class B implements SeekBar.OnSeekBarChangeListener {

    /* renamed from: b, reason: collision with root package name */
    public final A f7604b = new A(this);

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ D f7605e;

    public B(D d7) {
        this.f7605e = d7;
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onProgressChanged(SeekBar seekBar, int i2, boolean z6) {
        if (z6) {
            f1.U u6 = (f1.U) seekBar.getTag();
            int i7 = D.f7608A0;
            u6.requestSetVolume(i2);
        }
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onStartTrackingTouch(SeekBar seekBar) {
        D d7 = this.f7605e;
        if (d7.f7632X != null) {
            d7.f7630V.removeCallbacks(this.f7604b);
        }
        d7.f7632X = (f1.U) seekBar.getTag();
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onStopTrackingTouch(SeekBar seekBar) {
        this.f7605e.f7630V.postDelayed(this.f7604b, 500L);
    }
}
