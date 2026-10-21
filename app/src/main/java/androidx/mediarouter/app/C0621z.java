package androidx.mediarouter.app;

import android.widget.SeekBar;

/* renamed from: androidx.mediarouter.app.z, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0621z extends f1.M {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ D f7918a;

    public C0621z(D d7) {
        this.f7918a = d7;
    }

    @Override // f1.M
    public void onRouteChanged(f1.X x6, f1.U u6) {
        this.f7918a.m(true);
    }

    @Override // f1.M
    public void onRouteUnselected(f1.X x6, f1.U u6) {
        this.f7918a.m(false);
    }

    @Override // f1.M
    public void onRouteVolumeChanged(f1.X x6, f1.U u6) {
        D d7 = this.f7918a;
        SeekBar seekBar = (SeekBar) d7.f7637c0.get(u6);
        int volume = u6.getVolume();
        int i2 = D.f7608A0;
        if (seekBar == null || d7.f7632X == u6) {
            return;
        }
        seekBar.setProgress(volume);
    }
}
