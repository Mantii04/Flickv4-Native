package P4;

import flix.com.vision.models.PreferenceEntry;

/* loaded from: classes2.dex */
public abstract /* synthetic */ class a {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int[] f2717a;

    static {
        int[] iArr = new int[PreferenceEntry.Type.values().length];
        f2717a = iArr;
        try {
            iArr[PreferenceEntry.Type.BOOLEAN.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f2717a[PreferenceEntry.Type.STRING.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            f2717a[PreferenceEntry.Type.INTEGER.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
    }
}
