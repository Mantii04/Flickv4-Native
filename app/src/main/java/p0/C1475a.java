package p0;

import android.os.Build;
import androidx.media.AudioAttributesCompat;

/* renamed from: p0.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1475a {

    /* renamed from: a, reason: collision with root package name */
    public final C1477c f19411a;

    public C1475a() {
        int i2 = AudioAttributesCompat.f7058b;
        if (Build.VERSION.SDK_INT >= 26) {
            this.f19411a = new C1478d();
        } else {
            this.f19411a = new C1477c();
        }
    }

    public AudioAttributesCompat build() {
        return new AudioAttributesCompat(this.f19411a.build());
    }

    public C1475a setLegacyStreamType(int i2) {
        this.f19411a.setLegacyStreamType(i2);
        return this;
    }
}
