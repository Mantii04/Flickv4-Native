package androidx.core.graphics.drawable;

import android.content.res.ColorStateList;
import android.os.Parcelable;
import z1.AbstractC1981c;

/* loaded from: classes.dex */
public class IconCompatParcelizer {
    public static IconCompat read(AbstractC1981c abstractC1981c) {
        IconCompat iconCompat = new IconCompat();
        iconCompat.f5550a = abstractC1981c.readInt(iconCompat.f5550a, 1);
        iconCompat.f5552c = abstractC1981c.readByteArray(iconCompat.f5552c, 2);
        iconCompat.f5553d = abstractC1981c.readParcelable(iconCompat.f5553d, 3);
        iconCompat.f5554e = abstractC1981c.readInt(iconCompat.f5554e, 4);
        iconCompat.f5555f = abstractC1981c.readInt(iconCompat.f5555f, 5);
        iconCompat.f5556g = (ColorStateList) abstractC1981c.readParcelable(iconCompat.f5556g, 6);
        iconCompat.f5558i = abstractC1981c.readString(iconCompat.f5558i, 7);
        iconCompat.f5559j = abstractC1981c.readString(iconCompat.f5559j, 8);
        iconCompat.onPostParceling();
        return iconCompat;
    }

    public static void write(IconCompat iconCompat, AbstractC1981c abstractC1981c) {
        abstractC1981c.setSerializationFlags(true, true);
        iconCompat.onPreParceling(abstractC1981c.isStream());
        int i2 = iconCompat.f5550a;
        if (-1 != i2) {
            abstractC1981c.writeInt(i2, 1);
        }
        byte[] bArr = iconCompat.f5552c;
        if (bArr != null) {
            abstractC1981c.writeByteArray(bArr, 2);
        }
        Parcelable parcelable = iconCompat.f5553d;
        if (parcelable != null) {
            abstractC1981c.writeParcelable(parcelable, 3);
        }
        int i7 = iconCompat.f5554e;
        if (i7 != 0) {
            abstractC1981c.writeInt(i7, 4);
        }
        int i8 = iconCompat.f5555f;
        if (i8 != 0) {
            abstractC1981c.writeInt(i8, 5);
        }
        ColorStateList colorStateList = iconCompat.f5556g;
        if (colorStateList != null) {
            abstractC1981c.writeParcelable(colorStateList, 6);
        }
        String str = iconCompat.f5558i;
        if (str != null) {
            abstractC1981c.writeString(str, 7);
        }
        String str2 = iconCompat.f5559j;
        if (str2 != null) {
            abstractC1981c.writeString(str2, 8);
        }
    }
}
