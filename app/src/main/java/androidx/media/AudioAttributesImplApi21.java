package androidx.media;

import android.media.AudioAttributes;

/* loaded from: classes.dex */
public class AudioAttributesImplApi21 implements AudioAttributesImpl {

    /* renamed from: a, reason: collision with root package name */
    public AudioAttributes f7060a;

    /* renamed from: b, reason: collision with root package name */
    public int f7061b = -1;

    public AudioAttributesImplApi21() {
    }

    public boolean equals(Object obj) {
        if (obj instanceof AudioAttributesImplApi21) {
            return this.f7060a.equals(((AudioAttributesImplApi21) obj).f7060a);
        }
        return false;
    }

    public int getFlags() {
        return this.f7060a.getFlags();
    }

    @Override // androidx.media.AudioAttributesImpl
    public int getLegacyStreamType() {
        int i2 = this.f7061b;
        return i2 != -1 ? i2 : AudioAttributesCompat.a(getFlags(), getUsage());
    }

    public int getUsage() {
        return this.f7060a.getUsage();
    }

    public int hashCode() {
        return this.f7060a.hashCode();
    }

    public String toString() {
        return "AudioAttributesCompat: audioattributes=" + this.f7060a;
    }

    public AudioAttributesImplApi21(AudioAttributes audioAttributes) {
        this.f7060a = audioAttributes;
    }
}
