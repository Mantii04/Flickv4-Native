package androidx.media;

import android.media.AudioAttributes;
import z1.AbstractC1981c;

/* loaded from: classes.dex */
public class AudioAttributesImplApi21Parcelizer {
    public static AudioAttributesImplApi21 read(AbstractC1981c abstractC1981c) {
        AudioAttributesImplApi21 audioAttributesImplApi21 = new AudioAttributesImplApi21();
        audioAttributesImplApi21.f7060a = (AudioAttributes) abstractC1981c.readParcelable(audioAttributesImplApi21.f7060a, 1);
        audioAttributesImplApi21.f7061b = abstractC1981c.readInt(audioAttributesImplApi21.f7061b, 2);
        return audioAttributesImplApi21;
    }

    public static void write(AudioAttributesImplApi21 audioAttributesImplApi21, AbstractC1981c abstractC1981c) {
        abstractC1981c.setSerializationFlags(false, false);
        abstractC1981c.writeParcelable(audioAttributesImplApi21.f7060a, 1);
        abstractC1981c.writeInt(audioAttributesImplApi21.f7061b, 2);
    }
}
