package androidx.media;

import android.media.AudioAttributes;
import z1.AbstractC1981c;

/* loaded from: classes.dex */
public class AudioAttributesImplApi26Parcelizer {
    public static AudioAttributesImplApi26 read(AbstractC1981c abstractC1981c) {
        AudioAttributesImplApi26 audioAttributesImplApi26 = new AudioAttributesImplApi26();
        audioAttributesImplApi26.f7060a = (AudioAttributes) abstractC1981c.readParcelable(audioAttributesImplApi26.f7060a, 1);
        audioAttributesImplApi26.f7061b = abstractC1981c.readInt(audioAttributesImplApi26.f7061b, 2);
        return audioAttributesImplApi26;
    }

    public static void write(AudioAttributesImplApi26 audioAttributesImplApi26, AbstractC1981c abstractC1981c) {
        abstractC1981c.setSerializationFlags(false, false);
        abstractC1981c.writeParcelable(audioAttributesImplApi26.f7060a, 1);
        abstractC1981c.writeInt(audioAttributesImplApi26.f7061b, 2);
    }
}
