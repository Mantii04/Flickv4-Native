package v;

import androidx.constraintlayout.core.widgets.ConstraintWidget$DimensionBehaviour;
import java.util.ArrayList;

/* loaded from: classes.dex */
public abstract class i {
    public static m findDependents(u.e eVar, int i2, ArrayList<m> arrayList, m mVar) {
        int findGroupInDependents;
        int i7 = i2 == 0 ? eVar.f20132o0 : eVar.f20134p0;
        if (i7 != -1 && (mVar == null || i7 != mVar.f20358b)) {
            int i8 = 0;
            while (true) {
                if (i8 >= arrayList.size()) {
                    break;
                }
                m mVar2 = arrayList.get(i8);
                if (mVar2.getId() == i7) {
                    if (mVar != null) {
                        mVar.moveTo(i2, mVar2);
                        arrayList.remove(mVar);
                    }
                    mVar = mVar2;
                } else {
                    i8++;
                }
            }
        } else if (i7 != -1) {
            return mVar;
        }
        if (mVar == null) {
            if ((eVar instanceof u.k) && (findGroupInDependents = ((u.k) eVar).findGroupInDependents(i2)) != -1) {
                int i9 = 0;
                while (true) {
                    if (i9 >= arrayList.size()) {
                        break;
                    }
                    m mVar3 = arrayList.get(i9);
                    if (mVar3.getId() == findGroupInDependents) {
                        mVar = mVar3;
                        break;
                    }
                    i9++;
                }
            }
            if (mVar == null) {
                mVar = new m(i2);
            }
            arrayList.add(mVar);
        }
        if (mVar.add(eVar)) {
            if (eVar instanceof u.i) {
                u.i iVar = (u.i) eVar;
                iVar.getAnchor().findDependents(iVar.getOrientation() == 0 ? 1 : 0, arrayList, mVar);
            }
            if (i2 == 0) {
                eVar.f20132o0 = mVar.getId();
                eVar.f20085I.findDependents(i2, arrayList, mVar);
                eVar.f20087K.findDependents(i2, arrayList, mVar);
            } else {
                eVar.f20134p0 = mVar.getId();
                eVar.f20086J.findDependents(i2, arrayList, mVar);
                eVar.f20089M.findDependents(i2, arrayList, mVar);
                eVar.f20088L.findDependents(i2, arrayList, mVar);
            }
            eVar.f20092P.findDependents(i2, arrayList, mVar);
        }
        return mVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:226:0x0374  */
    /* JADX WARN: Removed duplicated region for block: B:245:0x03b1 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:248:0x03ad  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean simpleSolvingPass(u.f r17, v.InterfaceC1714c r18) {
        /*
            Method dump skipped, instructions count: 950
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: v.i.simpleSolvingPass(u.f, v.c):boolean");
    }

    public static boolean validInGroup(ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour, ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour2, ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour3, ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour4) {
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour5 = ConstraintWidget$DimensionBehaviour.f5239b;
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour6 = ConstraintWidget$DimensionBehaviour.f5242j;
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour7 = ConstraintWidget$DimensionBehaviour.f5240e;
        return (constraintWidget$DimensionBehaviour3 == constraintWidget$DimensionBehaviour5 || constraintWidget$DimensionBehaviour3 == constraintWidget$DimensionBehaviour7 || (constraintWidget$DimensionBehaviour3 == constraintWidget$DimensionBehaviour6 && constraintWidget$DimensionBehaviour != constraintWidget$DimensionBehaviour7)) || (constraintWidget$DimensionBehaviour4 == constraintWidget$DimensionBehaviour5 || constraintWidget$DimensionBehaviour4 == constraintWidget$DimensionBehaviour7 || (constraintWidget$DimensionBehaviour4 == constraintWidget$DimensionBehaviour6 && constraintWidget$DimensionBehaviour2 != constraintWidget$DimensionBehaviour7));
    }
}
