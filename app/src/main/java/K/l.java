package K;

/* loaded from: classes.dex */
public final class l implements m {

    /* renamed from: a, reason: collision with root package name */
    public static final l f1570a = new l();

    @Override // K.m
    public int checkRtl(CharSequence charSequence, int i2, int i7) {
        int i8 = i7 + i2;
        int i9 = 2;
        while (i2 < i8 && i9 == 2) {
            byte directionality = Character.getDirectionality(charSequence.charAt(i2));
            o oVar = p.f1573a;
            if (directionality != 0) {
                if (directionality != 1 && directionality != 2) {
                    switch (directionality) {
                        case 14:
                        case 15:
                            break;
                        case 16:
                        case 17:
                            break;
                        default:
                            i9 = 2;
                            break;
                    }
                    i2++;
                }
                i9 = 0;
                i2++;
            }
            i9 = 1;
            i2++;
        }
        return i9;
    }
}
