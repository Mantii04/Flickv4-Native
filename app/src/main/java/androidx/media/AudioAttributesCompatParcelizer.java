package androidx.media;

import z1.AbstractC1981c;

/* loaded from: classes.dex */
public class AudioAttributesCompatParcelizer {
    public static AudioAttributesCompat read(AbstractC1981c abstractC1981c) {
        AudioAttributesCompat audioAttributesCompat = new AudioAttributesCompat();
        audioAttributesCompat.f7059a = (AudioAttributesImpl) abstractC1981c.readVersionedParcelable(audioAttributesCompat.f7059a, 1);
        return audioAttributesCompat;
    }

    public static void write(AudioAttributesCompat audioAttributesCompat, AbstractC1981c abstractC1981c) {
        abstractC1981c.setSerializationFlags(false, false);
        abstractC1981c.writeVersionedParcelable(audioAttributesCompat.f7059a, 1);
    }
}
