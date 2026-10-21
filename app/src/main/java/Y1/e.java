package Y1;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes.dex */
public final class e {

    /* renamed from: a, reason: collision with root package name */
    public final List f4358a;

    /* renamed from: b, reason: collision with root package name */
    public f f4359b;

    public e(String... strArr) {
        this.f4358a = Arrays.asList(strArr);
    }

    public e addKey(String str) {
        e eVar = new e(this);
        eVar.f4358a.add(str);
        return eVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x007e A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean fullyResolvesTo(java.lang.String r8, int r9) {
        /*
            r7 = this;
            java.util.List r0 = r7.f4358a
            int r1 = r0.size()
            r2 = 0
            if (r9 < r1) goto Lb
            goto L87
        Lb:
            int r1 = r0.size()
            r3 = 1
            int r1 = r1 - r3
            if (r9 != r1) goto L15
            r1 = r3
            goto L16
        L15:
            r1 = r2
        L16:
            java.lang.Object r4 = r0.get(r9)
            java.lang.String r4 = (java.lang.String) r4
            java.lang.String r5 = "**"
            boolean r6 = r4.equals(r5)
            if (r6 != 0) goto L4f
            boolean r8 = r4.equals(r8)
            if (r8 != 0) goto L35
            java.lang.String r8 = "*"
            boolean r8 = r4.equals(r8)
            if (r8 == 0) goto L33
            goto L35
        L33:
            r8 = r2
            goto L36
        L35:
            r8 = r3
        L36:
            if (r1 != 0) goto L4c
            int r1 = r0.size()
            int r1 = r1 + (-2)
            if (r9 != r1) goto L87
            java.lang.Object r9 = A.i.c(r3, r0)
            java.lang.String r9 = (java.lang.String) r9
            boolean r9 = r9.equals(r5)
            if (r9 == 0) goto L87
        L4c:
            if (r8 == 0) goto L87
            goto L7e
        L4f:
            if (r1 != 0) goto L7c
            int r4 = r9 + 1
            java.lang.Object r4 = r0.get(r4)
            java.lang.String r4 = (java.lang.String) r4
            boolean r4 = r4.equals(r8)
            if (r4 == 0) goto L7c
            int r8 = r0.size()
            int r8 = r8 + (-2)
            if (r9 == r8) goto L7e
            int r8 = r0.size()
            int r8 = r8 + (-3)
            if (r9 != r8) goto L87
            java.lang.Object r8 = A.i.c(r3, r0)
            java.lang.String r8 = (java.lang.String) r8
            boolean r8 = r8.equals(r5)
            if (r8 == 0) goto L87
            goto L7e
        L7c:
            if (r1 == 0) goto L7f
        L7e:
            return r3
        L7f:
            int r9 = r9 + r3
            int r1 = r0.size()
            int r1 = r1 - r3
            if (r9 >= r1) goto L88
        L87:
            return r2
        L88:
            java.lang.Object r9 = r0.get(r9)
            java.lang.String r9 = (java.lang.String) r9
            boolean r8 = r9.equals(r8)
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: Y1.e.fullyResolvesTo(java.lang.String, int):boolean");
    }

    public f getResolvedElement() {
        return this.f4359b;
    }

    public int incrementDepthBy(String str, int i2) {
        if ("__container".equals(str)) {
            return 0;
        }
        List list = this.f4358a;
        if (((String) list.get(i2)).equals("**")) {
            return (i2 != list.size() - 1 && ((String) list.get(i2 + 1)).equals(str)) ? 2 : 0;
        }
        return 1;
    }

    public boolean matches(String str, int i2) {
        if ("__container".equals(str)) {
            return true;
        }
        List list = this.f4358a;
        if (i2 >= list.size()) {
            return false;
        }
        return ((String) list.get(i2)).equals(str) || ((String) list.get(i2)).equals("**") || ((String) list.get(i2)).equals("*");
    }

    public boolean propagateToChildren(String str, int i2) {
        if ("__container".equals(str)) {
            return true;
        }
        List list = this.f4358a;
        return i2 < list.size() - 1 || ((String) list.get(i2)).equals("**");
    }

    public e resolve(f fVar) {
        e eVar = new e(this);
        eVar.f4359b = fVar;
        return eVar;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("KeyPath{keys=");
        sb.append(this.f4358a);
        sb.append(",resolved=");
        sb.append(this.f4359b != null);
        sb.append('}');
        return sb.toString();
    }

    public e(e eVar) {
        this.f4358a = new ArrayList(eVar.f4358a);
        this.f4359b = eVar.f4359b;
    }
}
