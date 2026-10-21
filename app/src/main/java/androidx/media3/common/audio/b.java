package androidx.media3.common.audio;

import android.media.AudioManager;

/* loaded from: classes.dex */
public final /* synthetic */ class b implements AudioManager.OnAudioFocusChangeListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ AudioFocusManager f7068a;

    public /* synthetic */ b(AudioFocusManager audioFocusManager) {
        this.f7068a = audioFocusManager;
    }

    @Override // android.media.AudioManager.OnAudioFocusChangeListener
    public final void onAudioFocusChange(int i2) {
        this.f7068a.handlePlatformAudioFocusChange(i2);
    }
}
