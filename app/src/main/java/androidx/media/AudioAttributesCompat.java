package androidx.media;

import android.media.AudioAttributes;
import android.os.Build;
import android.util.SparseIntArray;
import z1.InterfaceC1983e;

/* loaded from: classes.dex */
public class AudioAttributesCompat implements InterfaceC1983e {

    /* renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ int f7058b = 0;

    /* renamed from: a, reason: collision with root package name */
    public AudioAttributesImpl f7059a;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        sparseIntArray.put(5, 1);
        sparseIntArray.put(6, 2);
        sparseIntArray.put(7, 2);
        sparseIntArray.put(8, 1);
        sparseIntArray.put(9, 1);
        sparseIntArray.put(10, 1);
    }

    public AudioAttributesCompat() {
    }

    public static int a(int i2, int i7) {
        if ((i2 & 1) == 1) {
            return 7;
        }
        if ((i2 & 4) == 4) {
            return 6;
        }
        switch (i7) {
            case 2:
                return 0;
            case 3:
                return 8;
            case 4:
                return 4;
            case 5:
            case 7:
            case 8:
            case 9:
            case 10:
                return 5;
            case 6:
                return 2;
            case 11:
                return 10;
            case 12:
            default:
                return 3;
            case 13:
                return 1;
        }
    }

    public static AudioAttributesCompat wrap(Object obj) {
        return Build.VERSION.SDK_INT >= 26 ? new AudioAttributesCompat(new AudioAttributesImplApi26((AudioAttributes) obj)) : new AudioAttributesCompat(new AudioAttributesImplApi21((AudioAttributes) obj));
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof AudioAttributesCompat)) {
            return false;
        }
        AudioAttributesCompat audioAttributesCompat = (AudioAttributesCompat) obj;
        AudioAttributesImpl audioAttributesImpl = this.f7059a;
        return audioAttributesImpl == null ? audioAttributesCompat.f7059a == null : audioAttributesImpl.equals(audioAttributesCompat.f7059a);
    }

    public int getLegacyStreamType() {
        return this.f7059a.getLegacyStreamType();
    }

    public int hashCode() {
        return this.f7059a.hashCode();
    }

    public String toString() {
        return this.f7059a.toString();
    }

    public AudioAttributesCompat(AudioAttributesImpl audioAttributesImpl) {
        this.f7059a = audioAttributesImpl;
    }
}
