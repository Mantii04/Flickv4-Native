package androidx.media;

import z1.AbstractC1981c;

/* loaded from: classes.dex */
public class AudioAttributesImplBaseParcelizer {
    public static AudioAttributesImplBase read(AbstractC1981c abstractC1981c) {
        AudioAttributesImplBase audioAttributesImplBase = new AudioAttributesImplBase();
        audioAttributesImplBase.f7062a = abstractC1981c.readInt(audioAttributesImplBase.f7062a, 1);
        audioAttributesImplBase.f7063b = abstractC1981c.readInt(audioAttributesImplBase.f7063b, 2);
        audioAttributesImplBase.f7064c = abstractC1981c.readInt(audioAttributesImplBase.f7064c, 3);
        audioAttributesImplBase.f7065d = abstractC1981c.readInt(audioAttributesImplBase.f7065d, 4);
        return audioAttributesImplBase;
    }

    public static void write(AudioAttributesImplBase audioAttributesImplBase, AbstractC1981c abstractC1981c) {
        abstractC1981c.setSerializationFlags(false, false);
        abstractC1981c.writeInt(audioAttributesImplBase.f7062a, 1);
        abstractC1981c.writeInt(audioAttributesImplBase.f7063b, 2);
        abstractC1981c.writeInt(audioAttributesImplBase.f7064c, 3);
        abstractC1981c.writeInt(audioAttributesImplBase.f7065d, 4);
    }
}
