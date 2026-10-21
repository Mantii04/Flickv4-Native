package u;

import java.util.ArrayList;
import java.util.Arrays;

/* loaded from: classes.dex */
public abstract class k extends e implements j {

    /* renamed from: q0, reason: collision with root package name */
    public e[] f20215q0 = new e[4];

    /* renamed from: r0, reason: collision with root package name */
    public int f20216r0 = 0;

    public void add(e eVar) {
        if (eVar == this || eVar == null) {
            return;
        }
        int i2 = this.f20216r0 + 1;
        e[] eVarArr = this.f20215q0;
        if (i2 > eVarArr.length) {
            this.f20215q0 = (e[]) Arrays.copyOf(eVarArr, eVarArr.length * 2);
        }
        e[] eVarArr2 = this.f20215q0;
        int i7 = this.f20216r0;
        eVarArr2[i7] = eVar;
        this.f20216r0 = i7 + 1;
    }

    public void addDependents(ArrayList<v.m> arrayList, int i2, v.m mVar) {
        for (int i7 = 0; i7 < this.f20216r0; i7++) {
            mVar.add(this.f20215q0[i7]);
        }
        for (int i8 = 0; i8 < this.f20216r0; i8++) {
            v.i.findDependents(this.f20215q0[i8], i2, arrayList, mVar);
        }
    }

    public int findGroupInDependents(int i2) {
        int i7;
        int i8;
        for (int i9 = 0; i9 < this.f20216r0; i9++) {
            e eVar = this.f20215q0[i9];
            if (i2 == 0 && (i8 = eVar.f20132o0) != -1) {
                return i8;
            }
            if (i2 == 1 && (i7 = eVar.f20134p0) != -1) {
                return i7;
            }
        }
        return -1;
    }

    public void removeAllIds() {
        this.f20216r0 = 0;
        Arrays.fill(this.f20215q0, (Object) null);
    }

    @Override // u.j
    public void updateConstraints(f fVar) {
    }
}
