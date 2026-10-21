package P3;

/* loaded from: classes2.dex */
public abstract class z extends com.google.common.base.a {

    /* renamed from: f, reason: collision with root package name */
    public final CharSequence f2713f;

    /* renamed from: j, reason: collision with root package name */
    public final o f2714j;

    /* renamed from: m, reason: collision with root package name */
    public int f2715m = 0;

    /* renamed from: n, reason: collision with root package name */
    public int f2716n;

    public z(A a7, CharSequence charSequence) {
        this.f2714j = a7.f2684a;
        this.f2716n = a7.f2686c;
        this.f2713f = charSequence;
    }

    @Override // com.google.common.base.a
    public String computeNext() {
        o oVar;
        int i2 = this.f2715m;
        while (true) {
            int i7 = this.f2715m;
            if (i7 == -1) {
                return (String) endOfData();
            }
            x xVar = (x) this;
            int indexIn = xVar.f2711p.f2712a.indexIn(xVar.f2713f, i7);
            CharSequence charSequence = this.f2713f;
            if (indexIn == -1) {
                indexIn = charSequence.length();
                this.f2715m = -1;
            } else {
                this.f2715m = indexIn + 1;
            }
            int i8 = this.f2715m;
            if (i8 != i2) {
                while (true) {
                    oVar = this.f2714j;
                    if (i2 >= indexIn || !oVar.matches(charSequence.charAt(i2))) {
                        break;
                    }
                    i2++;
                }
                while (indexIn > i2 && oVar.matches(charSequence.charAt(indexIn - 1))) {
                    indexIn--;
                }
                int i9 = this.f2716n;
                if (i9 == 1) {
                    indexIn = charSequence.length();
                    this.f2715m = -1;
                    while (indexIn > i2 && oVar.matches(charSequence.charAt(indexIn - 1))) {
                        indexIn--;
                    }
                } else {
                    this.f2716n = i9 - 1;
                }
                return charSequence.subSequence(i2, indexIn).toString();
            }
            int i10 = i8 + 1;
            this.f2715m = i10;
            if (i10 > charSequence.length()) {
                this.f2715m = -1;
            }
        }
    }
}
