package K;

/* loaded from: classes.dex */
public final class k implements m {

    /* renamed from: a, reason: collision with root package name */
    public static final k f1569a = new k();

    @Override // K.m
    public int checkRtl(CharSequence charSequence, int i2, int i7) {
        int i8 = i7 + i2;
        boolean z6 = false;
        while (true) {
            char c7 = 2;
            if (i2 >= i8) {
                return z6 ? 1 : 2;
            }
            byte directionality = Character.getDirectionality(charSequence.charAt(i2));
            o oVar = p.f1573a;
            if (directionality == 0) {
                c7 = 1;
            } else if (directionality == 1 || directionality == 2) {
                c7 = 0;
            }
            if (c7 == 0) {
                return 0;
            }
            if (c7 == 1) {
                z6 = true;
            }
            i2++;
        }
    }
}
