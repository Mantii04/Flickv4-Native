package p0;

import android.media.AudioAttributes;
import androidx.media.AudioAttributesImpl;
import androidx.media.AudioAttributesImplApi21;

/* renamed from: p0.c, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C1477c implements InterfaceC1476b {

    /* renamed from: a, reason: collision with root package name */
    public final AudioAttributes.Builder f19412a = new AudioAttributes.Builder();

    @Override // p0.InterfaceC1476b
    public AudioAttributesImpl build() {
        return new AudioAttributesImplApi21(this.f19412a.build());
    }

    public C1477c setLegacyStreamType(int i2) {
        this.f19412a.setLegacyStreamType(i2);
        return this;
    }
}
